import React, { useState } from 'react';
import { MosqueFormData } from '../types/mosque';

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
  const [formData, setFormData] = useState<MosqueFormData>({
    name: '',
    type: 'cami',
    isPublic: true,
    facilities: {
      menWc: false,
      womenWc: false,
      menWudu: false,
      womenWudu: false,
      womenPrayerArea: false,
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
        menWc: false,
        womenWc: false,
        menWudu: false,
        womenWudu: false,
        womenPrayerArea: false,
      },
      congregation: '',
    });
  };

  const handleFacilityChange = (facility: keyof MosqueFormData['facilities']) => {
    setFormData(prev => ({
      ...prev,
      facilities: {
        ...prev.facilities,
        [facility]: !prev.facilities[facility],
      },
    }));
  };

  if (!isOpen) return null;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <div className="modal-header">
          <h2>Add New Mosque</h2>
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
                <button
                  type="button"
                  className={`facility-btn ${formData.facilities.menWc ? 'active' : ''}`}
                  onClick={() => handleFacilityChange('menWc')}
                >
                  Men's WC
                </button>
                <button
                  type="button"
                  className={`facility-btn ${formData.facilities.womenWc ? 'active' : ''}`}
                  onClick={() => handleFacilityChange('womenWc')}
                >
                  Women's WC
                </button>
                <button
                  type="button"
                  className={`facility-btn ${formData.facilities.menWudu ? 'active' : ''}`}
                  onClick={() => handleFacilityChange('menWudu')}
                >
                  Men's Wudu
                </button>
                <button
                  type="button"
                  className={`facility-btn ${formData.facilities.womenWudu ? 'active' : ''}`}
                  onClick={() => handleFacilityChange('womenWudu')}
                >
                  Women's Wudu
                </button>
                <button
                  type="button"
                  className={`facility-btn ${formData.facilities.womenPrayerArea ? 'active' : ''}`}
                  onClick={() => handleFacilityChange('womenPrayerArea')}
                >
                  Women's Prayer Area
                </button>
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