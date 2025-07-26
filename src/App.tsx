import React, { useState, useMemo, useEffect, lazy, Suspense } from 'react';
import AddMosqueForm from './components/AddMosqueForm';
import MosqueDetails from './components/MosqueDetails';
import SearchFilter, { FilterOptions } from './components/SearchFilter';
import MosqueList from './components/MosqueList';
import ErrorMessage from './components/ErrorMessage';
import { useMosques } from './hooks/useMosques';
import { useGeolocation } from './hooks/useGeolocation';
import { useLanguage } from './contexts/LanguageContext';
import { Mosque, MosqueFormData } from './types/mosque';
import './styles/mobile.css';

const MapComponent = lazy(() => import('./components/MapComponent'));

function App() {
  const { t } = useLanguage();
  const { mosques, addMosque, isLoading: isMosquesLoading, error: mosquesError } = useMosques();

  const { location: userLocation, isLoading: isLoadingLocation, error: locationError, getCurrentLocation, clearError } = useGeolocation();
  
  const [isAddFormOpen, setIsAddFormOpen] = useState(false);
  const [selectedLocation, setSelectedLocation] = useState<{ lat: number; lng: number } | null>(null);
  const [selectedMosque, setSelectedMosque] = useState<Mosque | null>(null);
  const [isDetailsOpen, setIsDetailsOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  const [filters, setFilters] = useState<FilterOptions>({
    type: 'all',
    isPublic: 'all',
    facilities: {
      menWc: false,
      womenWc: false,
      menWudu: false,
      womenWudu: false,
      womenPrayerArea: false,
    },
  });
  const [currentView, setCurrentView] = useState<'map' | 'list'>('map');
  const [shouldCenterOnLocation, setShouldCenterOnLocation] = useState(false);
  const [isInitialLocationLoading, setIsInitialLocationLoading] = useState(true);

  const handleMapClick = (lat: number, lng: number) => {
    setSelectedLocation({ lat, lng });
    setIsAddFormOpen(true);
  };

  const handleMosqueClick = (mosque: Mosque) => {
    setSelectedMosque(mosque);
    setIsDetailsOpen(true);
  };

  const handleAddMosque = async (formData: MosqueFormData) => {
    if (!selectedLocation) return;

    try {
      const newMosqueData = {
        ...formData,
        location: {
          lat: selectedLocation.lat,
          lng: selectedLocation.lng,
        },
      };

      await addMosque(newMosqueData);
      setSelectedLocation(null);
    } catch (error) {
      console.error('Failed to add mosque:', error);
    }
  };

  const handleCloseAddForm = () => {
    setIsAddFormOpen(false);
    setSelectedLocation(null);
  };

  const handleCloseDetails = () => {
    setIsDetailsOpen(false);
    setSelectedMosque(null);
  };

  const handleSearch = (query: string) => {
    setSearchQuery(query);
  };

  const handleFilter = (newFilters: FilterOptions) => {
    setFilters(newFilters);
  };

  const handleNearMe = () => {
    setShouldCenterOnLocation(true);
    getCurrentLocation();
  };

  // Request location on app startup (for initial center, but don't force pan to it)
  useEffect(() => {
    // Add a small delay to allow the app to fully initialize
    const timer = setTimeout(() => {
      getCurrentLocation();
    }, 1000);
    
    return () => clearTimeout(timer);
  }, [getCurrentLocation]);

  // Stop initial loading when we have location or get an error
  useEffect(() => {
    if (userLocation || locationError) {
      setIsInitialLocationLoading(false);
    }
  }, [userLocation, locationError]);

  // Reset center trigger after location is used
  useEffect(() => {
    if (shouldCenterOnLocation && userLocation) {
      // Reset the flag after a short delay to allow the map to center
      const timer = setTimeout(() => {
        setShouldCenterOnLocation(false);
      }, 500);
      
      return () => clearTimeout(timer);
    }
  }, [shouldCenterOnLocation, userLocation]);

  // Filter and search mosques
  const filteredMosques = useMemo(() => {
    let filtered = mosques;

    // Search filter
    if (searchQuery.trim()) {
      const query = searchQuery.toLowerCase().trim();
      console.log('Searching for:', query);
      console.log('Available mosques:', mosques.map(m => m.name));
      
      filtered = filtered.filter(mosque => {
        const nameMatch = mosque.name.toLowerCase().includes(query);
        const congregationMatch = mosque.congregation?.toLowerCase().includes(query);
        const addressMatch = mosque.location.address?.toLowerCase().includes(query);
        
        const matches = nameMatch || congregationMatch || addressMatch;
        console.log(`${mosque.name}: ${matches} (name:${nameMatch}, cong:${congregationMatch}, addr:${addressMatch})`);
        
        return matches;
      });
      
      console.log('Filtered results:', filtered.length);
    }

    // Type filter
    if (filters.type !== 'all') {
      filtered = filtered.filter(mosque => mosque.type === filters.type);
    }

    // Public/Private filter
    if (filters.isPublic === 'public') {
      filtered = filtered.filter(mosque => mosque.isPublic);
    } else if (filters.isPublic === 'private') {
      filtered = filtered.filter(mosque => !mosque.isPublic);
    }

    // Facilities filter
    const facilitiesEnabled = Object.entries(filters.facilities).filter(([_, enabled]) => enabled);
    if (facilitiesEnabled.length > 0) {
      filtered = filtered.filter(mosque =>
        facilitiesEnabled.every(([facility, _]) =>
          mosque.facilities[facility as keyof typeof mosque.facilities]
        )
      );
    }

    return filtered;
  }, [mosques, searchQuery, filters]);

  // Show loading state while mosques are being fetched or getting initial location
  if (isMosquesLoading || isInitialLocationLoading) {
    return (
      <div className="App">
        <div className="loading-screen">
          <div className="loading-content">
            <div className="loading-icon">🕌</div>
            <h1 className="loading-title">{t('loadingScreen.title')}</h1>
            <div className="loading-spinner-wrapper">
              <div className="modern-spinner"></div>
            </div>
            <p className="loading-text">
              {isMosquesLoading ? t('loadingScreen.loadingMosques') : t('loadingScreen.gettingLocation')}
            </p>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="App">
      <SearchFilter
        onSearch={handleSearch}
        onFilter={handleFilter}
      />

      <div className="main-content">
        {currentView === 'map' ? (
          <Suspense fallback={<div className="map-loading">
            <div className="loading-spinner"></div>
            <p>{t('loading.map')}</p>
          </div>}>
            <MapComponent
              mosques={filteredMosques}
              onMapClick={handleMapClick}
              onMosqueClick={handleMosqueClick}
              userLocation={userLocation}
              centerOnUserLocation={shouldCenterOnLocation}
              onLocateMe={handleNearMe}
              isLoadingLocation={isLoadingLocation}
            />
          </Suspense>
        ) : (
          <MosqueList
            mosques={filteredMosques}
            onMosqueClick={handleMosqueClick}
            userLocation={userLocation}
            isLoading={isMosquesLoading}
          />
        )}
      </div>

      <div className="bottom-nav">
        <button
          className={`bottom-nav-item ${currentView === 'map' ? 'active' : ''}`}
          onClick={() => setCurrentView('map')}
        >
          <span className="bottom-nav-icon">🗺️</span>
          <span>{t('navigation.map')}</span>
        </button>
        <button
          className={`bottom-nav-item ${currentView === 'list' ? 'active' : ''}`}
          onClick={() => setCurrentView('list')}
        >
          <span className="bottom-nav-icon">📋</span>
          <span>{t('navigation.list')}</span>
        </button>
      </div>

      <AddMosqueForm
        isOpen={isAddFormOpen}
        onClose={handleCloseAddForm}
        onSubmit={handleAddMosque}
        selectedLocation={selectedLocation}
      />

      <MosqueDetails
        mosque={selectedMosque}
        isOpen={isDetailsOpen}
        onClose={handleCloseDetails}
      />

      {(locationError || mosquesError) && (
        <ErrorMessage
          message={locationError || mosquesError || ''}
          onRetry={locationError ? getCurrentLocation : undefined}
          onDismiss={locationError ? clearError : undefined}
        />
      )}
    </div>
  );
}

export default App;
