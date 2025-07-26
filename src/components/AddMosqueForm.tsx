import React, { useState } from 'react';
import { MosqueFormData } from '../types/mosque';
import { useLanguage } from '../contexts/LanguageContext';

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
  });

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedLocation) {
      alert('Please select a location on the map first');
      return;
    }
    onSubmit(formData);
    onClose();
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
    const facilityName = t(`facilities.${facilityKey}`);
    if (value === null) return `${facilityName} - ${t('facilities.unknown')}`;
    if (value === true) return `${facilityName} - ${t('facilities.available')}`;
    return `${facilityName} - ${t('facilities.notAvailable')}`;
  };

  if (!isOpen) return null;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <div className="modal-header">
          <h2>{t('addMosque.title')}</h2>
          <button className="close-btn" onClick={onClose}>×</button>
        </div>
        
        <form onSubmit={handleSubmit} className="mosque-form">
          <div className="form-content">
            <div className="form-group">
              <label htmlFor="name">Name *</label>
              <input
                type="text"
                id="name"
                value={formData.name}
                onChange={(e) => setFormData(prev => ({ ...prev, name: e.target.value }))}
                required
              />
            </div>

            <div className="form-group">
              <label htmlFor="type">Type *</label>
              <select
                id="type"
                value={formData.type}
                onChange={(e) => setFormData(prev => ({ ...prev, type: e.target.value as any }))}
              >
                <option value="cami">Cami</option>
                <option value="mescit">Mescit</option>
                <option value="cuma-only">Cuma Only</option>
              </select>
            </div>

            <div className="form-group">
              <label className="checkbox-label">
                <input
                  type="checkbox"
                  checked={formData.isPublic}
                  onChange={(e) => setFormData(prev => ({ ...prev, isPublic: e.target.checked }))}
                />
                Public Access
              </label>
            </div>

            <div className="form-group">
              <label htmlFor="congregation">Congregation</label>
              <input
                type="text"
                id="congregation"
                value={formData.congregation}
                onChange={(e) => setFormData(prev => ({ ...prev, congregation: e.target.value }))}
                placeholder="Optional"
              />
            </div>

            <div className="form-group">
              <h3>Facilities</h3>
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
            <button type="button" onClick={onClose} className="btn-cancel">
              Cancel
            </button>
            <button type="submit" className="btn-submit">
              Add Mosque
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default AddMosqueForm;