import { useState, useEffect } from 'react';
import { Mosque } from '../types/mosque';

const STORAGE_KEY = 'mosque-map-data';

export const useLocalStorage = () => {
  const [mosques, setMosques] = useState<Mosque[]>([]);

  useEffect(() => {
    const saved = localStorage.getItem(STORAGE_KEY);
    if (saved) {
      try {
        const parsedMosques = JSON.parse(saved).map((mosque: any) => ({
          ...mosque,
          createdAt: new Date(mosque.createdAt),
          updatedAt: new Date(mosque.updatedAt),
        }));
        setMosques(parsedMosques);
      } catch (error) {
        console.error('Error loading mosques from localStorage:', error);
      }
    }
  }, []);

  const saveMosque = (mosque: Mosque) => {
    const updatedMosques = [...mosques, mosque];
    setMosques(updatedMosques);
    localStorage.setItem(STORAGE_KEY, JSON.stringify(updatedMosques));
  };

  const updateMosque = (id: string, updates: Partial<Mosque>) => {
    const updatedMosques = mosques.map(mosque =>
      mosque.id === id
        ? { ...mosque, ...updates, updatedAt: new Date() }
        : mosque
    );
    setMosques(updatedMosques);
    localStorage.setItem(STORAGE_KEY, JSON.stringify(updatedMosques));
  };

  const deleteMosque = (id: string) => {
    const updatedMosques = mosques.filter(mosque => mosque.id !== id);
    setMosques(updatedMosques);
    localStorage.setItem(STORAGE_KEY, JSON.stringify(updatedMosques));
  };

  return {
    mosques,
    saveMosque,
    updateMosque,
    deleteMosque,
  };
};