import React from 'react';
import { Mosque, MOSQUE_TYPES } from '../types/mosque';
import { useLanguage } from '../contexts/LanguageContext';
import { openDirectionsFromCurrentLocation } from '../utils/directions';

interface MosqueDetailsProps {
  mosque: Mosque | null;
  isOpen: boolean;
  onClose: () => void;
}

const MosqueDetails: React.FC<MosqueDetailsProps> = ({ mosque, isOpen, onClose }) => {
  const { t } = useLanguage();
  if (!isOpen || !mosque) return null;

  const handleGetDirections = () => {
    openDirectionsFromCurrentLocation(
      { lat: mosque.location.lat, lng: mosque.location.lng },
      mosque.name,
      (error) => {
        console.warn('Location error:', error);
      }
    );
  };

  const facilityIcons = {
    menWc: '🚹',
    womenWc: '🚺',
    menWudu: '🚿',
    womenWudu: '🛁',
    womenPrayerArea: '👩‍🕌',
  };

  const getFacilityStatus = (value: boolean | null) => {
    if (value === null) return { text: t('facilities.unknown'), icon: '❓', className: 'unknown' };
    if (value === true) return { text: t('facilities.available'), icon: '✅', className: 'available' };
    return { text: t('facilities.notAvailable'), icon: '❌', className: 'not-available' };
  };

  return (
    <div className="details-overlay" onClick={onClose}>
      <div className="details-sheet" onClick={(e) => e.stopPropagation()}>
        <div className="details-header">
          <div className="mosque-title">
            <h2>{mosque.name}</h2>
            <div 
              className="mosque-type-badge"
              style={{ backgroundColor: MOSQUE_TYPES[mosque.type].color }}
            >
              {MOSQUE_TYPES[mosque.type].label}
            </div>
          </div>
          <button className="close-btn" onClick={onClose}>×</button>
        </div>

        <div className="details-content">
          <div className="detail-section">
            <h3>{t('mosqueDetails.access')}</h3>
            <div className="access-status">
              {mosque.isPublic ? (
                <span className="public-badge">🌍 {t('mosqueDetails.public')}</span>
              ) : (
                <span className="private-badge">🔒 {t('mosqueDetails.private')}</span>
              )}
            </div>
          </div>

          {mosque.congregation && (
            <div className="detail-section">
              <h3>{t('mosqueDetails.congregation')}</h3>
              <p>{mosque.congregation}</p>
            </div>
          )}

          <div className="detail-section">
            <h3>{t('mosqueDetails.facilities')}</h3>
            <div className="facilities-list">
              {Object.entries(mosque.facilities).map(([key, available]) => {
                const status = getFacilityStatus(available);
                return (
                  <div 
                    key={key} 
                    className={`facility-item ${status.className}`}
                  >
                    <span className="facility-icon">
                      {facilityIcons[key as keyof typeof facilityIcons]}
                    </span>
                    <span className="facility-label">
                      {t(`facilities.${key}`)}
                    </span>
                    <span className="facility-status">
                      {status.icon}
                    </span>
                  </div>
                );
              })}
            </div>
          </div>

          <div className="detail-section">
            <h3>Location</h3>
            <p className="coordinates">
              📍 {mosque.location.lat.toFixed(6)}, {mosque.location.lng.toFixed(6)}
            </p>
            {mosque.location.address && (
              <p className="address">{mosque.location.address}</p>
            )}
          </div>

          <div className="detail-section">
            <h3>Information</h3>
            <div className="info-grid">
              <div className="info-item">
                <span className="info-label">Added by:</span>
                <span className="info-value">{mosque.createdBy}</span>
              </div>
              <div className="info-item">
                <span className="info-label">Created:</span>
                <span className="info-value">
                  {new Date(mosque.createdAt).toLocaleDateString()}
                </span>
              </div>
              <div className="info-item">
                <span className="info-label">Updated:</span>
                <span className="info-value">
                  {new Date(mosque.updatedAt).toLocaleDateString()}
                </span>
              </div>
            </div>
          </div>
        </div>

        <div className="details-actions">
          <button className="btn-edit">✏️ Suggest Edit</button>
          <button className="btn-directions" onClick={handleGetDirections}>
            🗺️ Get Directions
          </button>
        </div>
      </div>
    </div>
  );
};

export default MosqueDetails;