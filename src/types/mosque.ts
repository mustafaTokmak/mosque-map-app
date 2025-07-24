export interface Mosque {
  id: string;
  name: string;
  type: 'cami' | 'mescit' | 'cuma-only';
  isPublic: boolean;
  location: {
    lat: number;
    lng: number;
    address?: string;
  };
  facilities: {
    menWc: boolean;
    womenWc: boolean;
    menWudu: boolean;
    womenWudu: boolean;
    womenPrayerArea: boolean;
  };
  congregation?: string;
  createdBy: string;
  createdAt: Date;
  updatedAt: Date;
}

export interface MosqueFormData {
  name: string;
  type: 'cami' | 'mescit' | 'cuma-only';
  isPublic: boolean;
  facilities: {
    menWc: boolean;
    womenWc: boolean;
    menWudu: boolean;
    womenWudu: boolean;
    womenPrayerArea: boolean;
  };
  congregation?: string;
}

export const MOSQUE_TYPES = {
  cami: { label: 'Cami', color: '#22c55e' },
  mescit: { label: 'Mescit', color: '#3b82f6' },
  'cuma-only': { label: 'Cuma Only', color: '#f97316' }
} as const;