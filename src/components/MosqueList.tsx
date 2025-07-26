import React from 'react';
import { Mosque, MOSQUE_TYPES } from '../types/mosque';
import { openDirectionsFromCurrentLocation } from '../utils/directions';

interface MosqueListProps {
  mosques: Mosque[];
  onMosqueClick: (mosque: Mosque) => void;
  userLocation?: { lat: number; lng: number } | null;
  isLoading?: boolean;
}

const calculateDistance = (
  lat1: number,
  lon1: number,
  lat2: number,
  lon2: number
): number => {
  const R = 6371;
  const dLat = (lat2 - lat1) * (Math.PI / 180);
  const dLon = (lon2 - lon1) * (Math.PI / 180);
  const a =
    Math.sin(dLat / 2) * Math.sin(dLat / 2) +
    Math.cos(lat1 * (Math.PI / 180)) *
      Math.cos(lat2 * (Math.PI / 180)) *
      Math.sin(dLon / 2) *
      Math.sin(dLon / 2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
  return R * c;
};

const MosqueList: React.FC<MosqueListProps> = ({
  mosques,
  onMosqueClick,
  userLocation,
  isLoading,
}) => {
  console.log('MosqueList received:', mosques.length, 'mosques');
  const handleGetDirections = (mosque: Mosque, event: React.MouseEvent) => {
    event.stopPropagation(); // Prevent mosque item click
    openDirectionsFromCurrentLocation(
      { lat: mosque.location.lat, lng: mosque.location.lng },
      mosque.name,
      (error) => {
        console.warn('Location error:', error);
      }
    );
  };
  if (isLoading) {
    return (
      <div className="mosque-list loading">
        <div className="loading-container">
          <div className="loading-spinner spinner-large">
            <div className="spinner"></div>
          </div>
          <p className="loading-message">Finding mosques nearby...</p>
        </div>
      </div>
    );
  }

  if (mosques.length === 0) {
    return (
      <div className="mosque-list empty">
        <div className="empty-state">
          <p>🕌</p>
          <p>No mosques found</p>
          <p>Try adjusting your search terms or clear your filters to see all available mosques in the area</p>
          <div className="empty-state-actions">
            <button className="empty-state-btn secondary" onClick={() => window.location.reload()}>
              🔄 Clear Search
            </button>
          </div>
        </div>
      </div>
    );
  }

  const mosquesWithDistance = mosques.map(mosque => ({
    ...mosque,
    distance: userLocation
      ? calculateDistance(
          userLocation.lat,
          userLocation.lng,
          mosque.location.lat,
          mosque.location.lng
        )
      : null,
  }));

  const sortedMosques = mosquesWithDistance.sort((a, b) => {
    if (a.distance !== null && b.distance !== null) {
      return a.distance - b.distance;
    }
    return a.name.localeCompare(b.name);
  });

  return (
    <div className="mosque-list">
      <div className="list-header">
        <h3>Found {mosques.length} mosque{mosques.length !== 1 ? 's' : ''}</h3>
      </div>
      <div className="mosque-items">
        {sortedMosques.map((mosque) => (
          <div
            key={mosque.id}
            className="mosque-item"
            onClick={() => onMosqueClick(mosque)}
          >
            <div className="mosque-item-content">
              <div className="mosque-main-info">
                <div className="mosque-item-header">
                  <h4 className="mosque-name">{mosque.name}</h4>
                  <span
                    className="mosque-type-tag"
                    style={{ backgroundColor: MOSQUE_TYPES[mosque.type].color }}
                  >
                    {MOSQUE_TYPES[mosque.type].label}
                  </span>
                </div>

                <div className="mosque-meta">
                  <div className="access-indicator">
                    {mosque.isPublic ? (
                      <span className="public-indicator">🌍 Public</span>
                    ) : (
                      <span className="private-indicator">🔒 Private</span>
                    )}
                  </div>

                  {mosque.congregation && mosque.congregation.trim() && (
                    <div className="congregation">
                      <span className="congregation-label">Congregation:</span>
                      <span className="congregation-name">{mosque.congregation}</span>
                    </div>
                  )}

                  <div className="facilities-summary">
                    {mosque.facilities.menWc === true && <span className="facility-icon" title="Men's WC">🚹</span>}
                    {mosque.facilities.womenWc === true && <span className="facility-icon" title="Women's WC">🚺</span>}
                    {mosque.facilities.menWudu === true && <span className="facility-icon" title="Men's Wudu">🚿</span>}
                    {mosque.facilities.womenWudu === true && <span className="facility-icon" title="Women's Wudu">🛁</span>}
                    {mosque.facilities.womenPrayerArea === true && <span className="facility-icon" title="Women's Prayer Area">👩‍🕌</span>}
                    {!Object.values(mosque.facilities).some(f => f === true) && (
                      <span className="no-facilities">No facility info available</span>
                    )}
                  </div>
                </div>
              </div>

              <div className="mosque-side-info">
                {mosque.distance && (
                  <div className="mosque-distance">
                    {mosque.distance < 1
                      ? `${Math.round(mosque.distance * 1000)}m`
                      : `${mosque.distance.toFixed(1)}km`}
                  </div>
                )}
                
                <div className="mosque-actions">
                  <button
                    className="directions-btn"
                    onClick={(e) => handleGetDirections(mosque, e)}
                    title="Get Directions"
                  >
                    🧭
                  </button>
                  <div className="mosque-item-arrow">➤</div>
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default MosqueList;