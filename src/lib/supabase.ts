import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.REACT_APP_SUPABASE_URL;
const supabaseAnonKey = process.env.REACT_APP_SUPABASE_ANON_KEY;


if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error(
    'Missing Supabase environment variables!\n\n' +
    'Please create a .env.local file with:\n' +
    'REACT_APP_SUPABASE_URL=your_supabase_project_url\n' +
    'REACT_APP_SUPABASE_ANON_KEY=your_supabase_anon_key\n\n' +
    'Get these from your Supabase project dashboard at https://supabase.com'
  );
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

// Database types based on our schema
export interface DatabaseMosque {
  id: string;
  name: string;
  type: 'cami' | 'mescit' | 'cuma-only';
  is_public: boolean;
  latitude: number;
  longitude: number;
  address?: string;
  congregation?: string;
  men_wc: boolean | null;
  women_wc: boolean | null;
  men_wudu: boolean | null;
  women_wudu: boolean | null;
  women_prayer_area: boolean | null;
  created_by?: string;
  created_at: string;
  updated_at: string;
}

export interface MosqueInsert {
  name: string;
  type: 'cami' | 'mescit' | 'cuma-only';
  is_public: boolean;
  latitude: number;
  longitude: number;
  address?: string;
  congregation?: string;
  men_wc: boolean | null;
  women_wc: boolean | null;
  men_wudu: boolean | null;
  women_wudu: boolean | null;
  women_prayer_area: boolean | null;
}

export interface MosqueUpdate {
  name?: string;
  type?: 'cami' | 'mescit' | 'cuma-only';
  is_public?: boolean;
  latitude?: number;
  longitude?: number;
  address?: string;
  congregation?: string;
  men_wc?: boolean | null;
  women_wc?: boolean | null;
  men_wudu?: boolean | null;
  women_wudu?: boolean | null;
  women_prayer_area?: boolean | null;
}