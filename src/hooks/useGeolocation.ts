import { useState, useCallback } from 'react';

interface GeolocationState {
  location: { lat: number; lng: number } | null;
  isLoading: boolean;
  error: string | null;
}

// Mock locations for development/testing
const MOCK_LOCATIONS = {
  istanbul: { lat: 41.0082, lng: 28.9784 },
  ankara: { lat: 39.9334, lng: 32.8597 },
  izmir: { lat: 38.4192, lng: 27.1287 },
  bursa: { lat: 40.1826, lng: 29.0665 },
  antalya: { lat: 36.8969, lng: 30.7133 },
  london: { lat: 51.5074, lng: -0.1278 },
};

export const useGeolocation = () => {
  const [state, setState] = useState<GeolocationState>({
    location: null,
    isLoading: false,
    error: null,
  });

  const getCurrentLocation = useCallback(() => {
    // Check for mock location in development
    const mockLocation = process.env.REACT_APP_MOCK_LOCATION;
    if (process.env.NODE_ENV === 'development' && mockLocation) {
      setState(prev => ({ ...prev, isLoading: true, error: null }));
      
      // Simulate network delay
      setTimeout(() => {
        const location = MOCK_LOCATIONS[mockLocation as keyof typeof MOCK_LOCATIONS];
        if (location) {
          setState({
            location,
            isLoading: false,
            error: null,
          });
        } else {
          setState({
            location: null,
            isLoading: false,
            error: `Invalid mock location: ${mockLocation}. Available: ${Object.keys(MOCK_LOCATIONS).join(', ')}`,
          });
        }
      }, 1000);
      return;
    }

    if (!navigator.geolocation) {
      setState(prev => ({
        ...prev,
        error: 'Geolocation is not supported by this browser',
        isLoading: false,
      }));
      return;
    }

    setState(prev => ({ ...prev, isLoading: true, error: null }));

    navigator.geolocation.getCurrentPosition(
      (position) => {
        setState({
          location: {
            lat: position.coords.latitude,
            lng: position.coords.longitude,
          },
          isLoading: false,
          error: null,
        });
      },
      (error) => {
        let errorMessage = 'Unable to get location';
        
        switch (error.code) {
          case error.PERMISSION_DENIED:
            errorMessage = 'Location access denied by user';
            break;
          case error.POSITION_UNAVAILABLE:
            errorMessage = 'Location information unavailable';
            break;
          case error.TIMEOUT:
            errorMessage = 'Location request timed out';
            break;
        }

        setState({
          location: null,
          isLoading: false,
          error: errorMessage,
        });
      },
      {
        enableHighAccuracy: true,
        timeout: 10000,
        maximumAge: 300000, // 5 minutes
      }
    );
  }, []);

  const clearError = useCallback(() => {
    setState(prev => ({ ...prev, error: null }));
  }, []);

  return {
    ...state,
    getCurrentLocation,
    clearError,
  };
};