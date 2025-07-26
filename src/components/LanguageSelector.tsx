import React from 'react';
import { useLanguage } from '../contexts/LanguageContext';

const LanguageSelector: React.FC = () => {
  const { language, setLanguage } = useLanguage();

  const languages = [
    { code: 'tr', label: '🇹🇷 Türkçe', shortLabel: 'TR' },
    { code: 'en', label: '🇺🇸 English', shortLabel: 'EN' },
  ] as const;

  return (
    <div className="language-selector">
      <select
        value={language}
        onChange={(e) => setLanguage(e.target.value as 'en' | 'tr')}
        className="language-select"
        title="Select Language / Dil Seçin"
      >
        {languages.map((lang) => (
          <option key={lang.code} value={lang.code}>
            {lang.label}
          </option>
        ))}
      </select>
    </div>
  );
};

export default LanguageSelector;