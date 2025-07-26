import React, { useState } from 'react';

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
          placeholder="Search mosques..."
          value={searchQuery}
          onChange={handleSearchChange}
          className="search-input"
        />
        <button
          onClick={() => setShowFilters(!showFilters)}
          className="filter-btn"
          title="Filters"
        >
          ⚙️
        </button>
      </div>

      {showFilters && (
        <div className="filters-panel">
          <div className="filter-section">
            <label>Type:</label>
            <select
              value={filters.type}
              onChange={(e) => handleFilterChange('type', e.target.value)}
            >
              <option value="all">All Types</option>
              <option value="cami">Cami</option>
              <option value="mescit">Mescit</option>
              <option value="cuma-only">Cuma Only</option>
            </select>
          </div>

          <div className="filter-section">
            <label>Access:</label>
            <select
              value={filters.isPublic}
              onChange={(e) => handleFilterChange('isPublic', e.target.value)}
            >
              <option value="all">All</option>
              <option value="public">Public Only</option>
              <option value="private">Private Only</option>
            </select>
          </div>

          <div className="filter-section">
            <label>Facilities:</label>
            <div className="facility-filters">
              {Object.entries(filters.facilities).map(([key, checked]) => (
                <button
                  key={key}
                  className={`facility-filter-btn ${checked ? 'active' : ''}`}
                  onClick={() => handleFacilityFilterChange(key as keyof FilterOptions['facilities'])}
                >
                  {key === 'menWc' && "Men WC"}
                  {key === 'womenWc' && "Women WC"}
                  {key === 'menWudu' && "Men Wudu"}
                  {key === 'womenWudu' && "Women Wudu"}
                  {key === 'womenPrayerArea' && "Women Prayer"}
                </button>
              ))}
            </div>
          </div>

          <div className="filter-actions">
            <button onClick={clearFilters} className="clear-filters-btn">
              Clear All
            </button>
          </div>
        </div>
      )}
    </div>
  );
};

export default SearchFilter;