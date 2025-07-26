import React, { useState, useRef, useEffect } from 'react';
import { useLanguage } from '../contexts/LanguageContext';

const LanguageDropdown: React.FC = () => {
  const { language, setLanguage } = useLanguage();
  const [isOpen, setIsOpen] = useState(false);
  const dropdownRef = useRef<HTMLDivElement>(null);

  const languages = [
    { code: 'tr', label: 'TR' },
    { code: 'en', label: 'EN' }
  ] as const;

  const currentLanguage = languages.find(lang => lang.code === language);

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  const handleLanguageChange = (langCode: 'tr' | 'en') => {
    setLanguage(langCode);
    setIsOpen(false);
  };

  return (
    <div className="language-dropdown" ref={dropdownRef}>
      <button
        className="language-dropdown-trigger"
        onClick={() => setIsOpen(!isOpen)}
        title="Language / Dil"
        aria-expanded={isOpen}
        aria-haspopup="listbox"
      >
        <span className="language-code">{currentLanguage?.label}</span>
        <span className={`dropdown-arrow ${isOpen ? 'open' : ''}`}>▼</span>
      </button>

      {isOpen && (
        <div className="language-dropdown-menu" role="listbox">
          {languages.map((lang) => (
            <button
              key={lang.code}
              className={`language-option ${language === lang.code ? 'selected' : ''}`}
              onClick={() => handleLanguageChange(lang.code)}
              role="option"
              aria-selected={language === lang.code}
            >
              <span className="option-code">{lang.label}</span>
            </button>
          ))}
        </div>
      )}
    </div>
  );
};

export default LanguageDropdown;