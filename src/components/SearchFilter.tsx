import React, { useState } from 'react';
import { useLanguage } from '../contexts/LanguageContext';
import LanguageDropdown from './LanguageDropdown';

interface SearchFilterProps {
  onSearch: (query: string) => void;
  onFilter: (filters: FilterOptions) => void;
}

export interface FilterOptions {
  type: string;
  isPublic: string;
  facilities: {
    menWc: boolean;
    womenWc: boolean;
    menWudu: boolean;
    womenWudu: boolean;
    womenPrayerArea: boolean;
  };
}

const SearchFilter: React.FC<SearchFilterProps> = ({
  onSearch,
  onFilter,
}) => {
  const { t } = useLanguage();
  const [searchQuery, setSearchQuery] = useState('');
  const [showFilters, setShowFilters] = useState(false);
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

  const handleSearchChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const query = e.target.value;
    setSearchQuery(query);
    onSearch(query);
  };

  const handleFilterChange = (key: keyof FilterOptions, value: any) => {
    const newFilters = { ...filters, [key]: value };
    setFilters(newFilters);
    onFilter(newFilters);
  };

  const handleFacilityFilterChange = (facility: keyof FilterOptions['facilities']) => {
    const newFilters = {
      ...filters,
      facilities: {
        ...filters.facilities,
        [facility]: !filters.facilities[facility],
      },
    };
    setFilters(newFilters);
    onFilter(newFilters);
  };

  const clearFilters = () => {
    const defaultFilters: FilterOptions = {
      type: 'all',
      isPublic: 'all',
      facilities: {
        menWc: false,
        womenWc: false,
        menWudu: false,
        womenWudu: false,
        womenPrayerArea: false,
      },
    };
    setFilters(defaultFilters);
    onFilter(defaultFilters);
  };

  return (
    <div className="search-filter-container">
      <div className="search-bar">
        <input
          type="text"
          placeholder={t('map.searchPlaceholder')}
          value={searchQuery}
          onChange={handleSearchChange}
          className="search-input"
        />
        
        {/* Language selector */}
        <LanguageDropdown />
        
        <button
          onClick={() => setShowFilters(!showFilters)}
          className="filter-btn"
          title={t('common.filter')}
        >
          ⚙️
        </button>
      </div>

      {showFilters && (
        <div className="filters-panel">
          <div className="filter-section">
            <label>{t('filters.type')}:</label>
            <select
              value={filters.type}
              onChange={(e) => handleFilterChange('type', e.target.value)}
            >
              <option value="all">{t('filters.allTypes')}</option>
              <option value="cami">{t('mosqueTypes.cami')}</option>
              <option value="mescit">{t('mosqueTypes.mescit')}</option>
              <option value="cuma-only">{t('mosqueTypes.cumaOnly')}</option>
            </select>
          </div>

          <div className="filter-section">
            <label>{t('filters.access')}:</label>
            <select
              value={filters.isPublic}
              onChange={(e) => handleFilterChange('isPublic', e.target.value)}
            >
              <option value="all">{t('filters.all')}</option>
              <option value="public">{t('filters.publicOnly')}</option>
              <option value="private">{t('filters.privateOnly')}</option>
            </select>
          </div>

          <div className="filter-section">
            <label>{t('filters.facilities')}:</label>
            <div className="facility-filters">
              {Object.entries(filters.facilities).map(([key, checked]) => (
                <button
                  key={key}
                  className={`facility-filter-btn ${checked ? 'active' : ''}`}
                  onClick={() => handleFacilityFilterChange(key as keyof FilterOptions['facilities'])}
                >
                  {key === 'menWc' && t('facilities.menWc')}
                  {key === 'womenWc' && t('facilities.womenWc')}
                  {key === 'menWudu' && t('facilities.menWudu')}
                  {key === 'womenWudu' && t('facilities.womenWudu')}
                  {key === 'womenPrayerArea' && t('facilities.womenPrayerArea')}
                </button>
              ))}
            </div>
          </div>

          <div className="filter-actions">
            <button onClick={clearFilters} className="clear-filters-btn">
              {t('filters.clearAll')}
            </button>
          </div>
        </div>
      )}
    </div>
  );
};

export default SearchFilter;