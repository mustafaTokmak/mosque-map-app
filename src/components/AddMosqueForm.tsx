import React, { useState } from 'react';
import { MosqueFormData } from '../types/mosque';
import { useLanguage } from '../contexts/LanguageContext';
import { useModalAnimation } from '../hooks/useModalAnimation';

interface AddMosqueFormProps {
  isOpen: boolean;
  onClose: () => void;
  onSubmit: (data: MosqueFormData) => void;
  selectedLocation?: { lat: number; lng: number } | null;
}

const AddMosqueForm: React.FC<AddMosqueFormProps> = ({
  isOpen,
  onClose,
  onSubmit,
  selectedLocation,
}) => {
  const { t } = useLanguage();
  const { isVisible, isClosing, handleClose } = useModalAnimation({ isOpen, onClose });
  const [formData, setFormData] = useState<MosqueFormData>({
    name: '',
    type: 'cami',
    isPublic: true,
    facilities: {
      menWc: null,
      womenWc: null,
      menWudu: null,
      womenWudu: null,
      womenPrayerArea: null,
    },
    congregation: '',
    description: '',
  });

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedLocation) {
      alert(t('addMosque.selectLocationFirst'));
      return;
    }
    onSubmit(formData);
    handleClose();
    setFormData({
      name: '',
      type: 'cami',
      isPublic: true,
      facilities: {
        menWc: null,
        womenWc: null,
        menWudu: null,
        womenWudu: null,
        womenPrayerArea: null,
      },
      congregation: '',
      description: '',
    });
  };

  const handleFacilityChange = (facility: keyof MosqueFormData['facilities']) => {
    setFormData(prev => {
      const currentValue = prev.facilities[facility];
      let nextValue: boolean | null;
      
      // Cycle through: null -> true -> false -> null
      if (currentValue === null) {
        nextValue = true;
      } else if (currentValue === true) {
        nextValue = false;
      } else {
        nextValue = null;
      }
      
      return {
        ...prev,
        facilities: {
          ...prev.facilities,
          [facility]: nextValue,
        },
      };
    });
  };

  const getFacilityButtonClass = (value: boolean | null) => {
    if (value === true) return 'facility-btn active';
    if (value === false) return 'facility-btn inactive';
    return 'facility-btn';
  };

  const getFacilityButtonText = (facilityKey: string, value: boolean | null) => {
    const facilityIcons = {
      menWc: '🚹',
      womenWc: '🚺',
      menWudu: '🚿',
      womenWudu: '🛁',
      womenPrayerArea: '🧕🏻',
    };
    
    const icon = facilityIcons[facilityKey as keyof typeof facilityIcons] || '';
    const facilityName = t(`facilities.${facilityKey}`);
    if (value === null) return `${icon} ${facilityName} - ${t('facilities.unknown')}`;
    if (value === true) return `${icon} ${facilityName} - ${t('facilities.available')}`;
    return `${icon} ${facilityName} - ${t('facilities.notAvailable')}`;
  };

  if (!isVisible) return null;

  return (
    <div className={`modal-overlay ${isClosing ? 'closing' : ''}`} onClick={handleClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <div className="modal-header">
          <h2>{t('addMosque.title')}</h2>
          <button className="close-btn" onClick={handleClose}>×</button>
        </div>
        
        <form onSubmit={handleSubmit} className="mosque-form">
          <div className="form-content">
            <div className="form-group">
              <label htmlFor="name">{t('addMosque.name')} *</label>
              <input
                type="text"
                id="name"
                value={formData.name}
                onChange={(e) => setFormData(prev => ({ ...prev, name: e.target.value }))}
                required
              />
            </div>

            <div className="form-group">
              <label htmlFor="type">{t('addMosque.type')} *</label>
              <select
                id="type"
                value={formData.type}
                onChange={(e) => setFormData(prev => ({ ...prev, type: e.target.value as any }))}
              >
                <option value="cami">{t('mosqueTypes.cami')}</option>
                <option value="mescit">{t('mosqueTypes.mescit')}</option>
                <option value="cuma-only">{t('mosqueTypes.cumaOnly')}</option>
              </select>
            </div>

            <div className="form-group">
              <label htmlFor="description">{t('addMosque.description')}</label>
              <textarea
                id="description"
                value={formData.description}
                onChange={(e) => setFormData(prev => ({ ...prev, description: e.target.value }))}
                placeholder={t('addMosque.descriptionPlaceholder')}
                rows={3}
              />
            </div>

            <div className="form-group">
              <label htmlFor="congregation">{t('addMosque.congregation')}</label>
              <input
                type="text"
                id="congregation"
                value={formData.congregation}
                onChange={(e) => setFormData(prev => ({ ...prev, congregation: e.target.value }))}
                placeholder={t('common.optional')}
              />
            </div>

            <div className="form-group">
              <h3>{t('addMosque.access')}</h3>
              <div className="access-toggle">
                <button
                  type="button"
                  className={`facility-btn ${formData.isPublic ? 'active' : 'inactive'}`}
                  onClick={() => setFormData(prev => ({ ...prev, isPublic: !prev.isPublic }))}
                >
                  {formData.isPublic ? `🌍 ${t('mosqueDetails.public')}` : `🔒 ${t('mosqueDetails.private')}`}
                </button>
              </div>
            </div>

            <div className="form-group">
              <h3>{t('addMosque.facilities')}</h3>
              <div className="facilities-grid">
                {Object.entries(formData.facilities).map(([key, value]) => (
                  <button
                    key={key}
                    type="button"
                    className={getFacilityButtonClass(value)}
                    onClick={() => handleFacilityChange(key as keyof MosqueFormData['facilities'])}
                  >
                    {getFacilityButtonText(key, value)}
                  </button>
                ))}
              </div>
            </div>

            {selectedLocation && (
              <div className="location-info">
                <p>📍 Location: {selectedLocation.lat.toFixed(6)}, {selectedLocation.lng.toFixed(6)}</p>
              </div>
            )}
          </div>

          <div className="form-actions">
            <button type="button" onClick={handleClose} className="btn-cancel">
              {t('common.cancel')}
            </button>
            <button type="submit" className="btn-submit">
              {t('addMosque.submit')}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default AddMosqueForm;