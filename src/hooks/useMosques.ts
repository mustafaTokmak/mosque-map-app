import { useState, useEffect, useCallback } from 'react';
import { supabase, DatabaseMosque, MosqueInsert, MosqueUpdate } from '../lib/supabase';
import { Mosque } from '../types/mosque';

export const useMosques = () => {
  const [mosques, setMosques] = useState<Mosque[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  // Convert database mosque to frontend mosque type
  const convertDatabaseMosque = (dbMosque: DatabaseMosque): Mosque => ({
    id: dbMosque.id,
    name: dbMosque.name,
    type: dbMosque.type,
    isPublic: dbMosque.is_public,
    location: {
      lat: dbMosque.latitude,
      lng: dbMosque.longitude,
      address: dbMosque.address,
    },
    facilities: {
      menWc: dbMosque.men_wc,
      womenWc: dbMosque.women_wc,
      menWudu: dbMosque.men_wudu,
      womenWudu: dbMosque.women_wudu,
      womenPrayerArea: dbMosque.women_prayer_area,
    },
    congregation: dbMosque.congregation,
    description: dbMosque.description,
    createdBy: dbMosque.created_by || 'Anonymous',
    createdAt: new Date(dbMosque.created_at),
    updatedAt: new Date(dbMosque.updated_at),
  });

  // Convert frontend mosque to database insert type
  const convertToMosqueInsert = (mosque: Omit<Mosque, 'id' | 'createdBy' | 'createdAt' | 'updatedAt'>): MosqueInsert => ({
    name: mosque.name,
    type: mosque.type,
    is_public: mosque.isPublic,
    latitude: mosque.location.lat,
    longitude: mosque.location.lng,
    address: mosque.location.address,
    congregation: mosque.congregation,
    description: mosque.description,
    men_wc: mosque.facilities.menWc,
    women_wc: mosque.facilities.womenWc,
    men_wudu: mosque.facilities.menWudu,
    women_wudu: mosque.facilities.womenWudu,
    women_prayer_area: mosque.facilities.womenPrayerArea,
  });

  // Fetch all mosques
  const fetchMosques = useCallback(async () => {
    try {
      setIsLoading(true);
      setError(null);

      const { data, error: fetchError } = await supabase
        .from('mosques')
        .select('*')
        .order('created_at', { ascending: false });

      if (fetchError) {
        throw fetchError;
      }

      const convertedMosques = data?.map(convertDatabaseMosque) || [];
      setMosques(convertedMosques);
    } catch (err) {
      console.error('Error fetching mosques:', err);
      setError(err instanceof Error ? err.message : 'Failed to fetch mosques');
    } finally {
      setIsLoading(false);
    }
  }, []);

  // Add a new mosque
  const addMosque = async (mosqueData: Omit<Mosque, 'id' | 'createdBy' | 'createdAt' | 'updatedAt'>) => {
    try {
      setError(null);
      const insertData = convertToMosqueInsert(mosqueData);

      const { data, error: insertError } = await supabase
        .from('mosques')
        .insert([insertData])
        .select()
        .single();

      if (insertError) {
        throw insertError;
      }

      const newMosque = convertDatabaseMosque(data);
      setMosques(prev => [newMosque, ...prev]);
      return newMosque;
    } catch (err) {
      console.error('Error adding mosque:', err);
      setError(err instanceof Error ? err.message : 'Failed to add mosque');
      throw err;
    }
  };

  // Update a mosque
  const updateMosque = async (id: string, updates: Partial<Omit<Mosque, 'id' | 'createdBy' | 'createdAt' | 'updatedAt'>>) => {
    try {
      setError(null);
      
      // Convert frontend updates to database format
      const dbUpdates: MosqueUpdate = {};
      if (updates.name !== undefined) dbUpdates.name = updates.name;
      if (updates.type !== undefined) dbUpdates.type = updates.type;
      if (updates.isPublic !== undefined) dbUpdates.is_public = updates.isPublic;
      if (updates.location?.lat !== undefined) dbUpdates.latitude = updates.location.lat;
      if (updates.location?.lng !== undefined) dbUpdates.longitude = updates.location.lng;
      if (updates.location?.address !== undefined) dbUpdates.address = updates.location.address;
      if (updates.congregation !== undefined) dbUpdates.congregation = updates.congregation;
      if (updates.facilities?.menWc !== undefined) dbUpdates.men_wc = updates.facilities.menWc;
      if (updates.facilities?.womenWc !== undefined) dbUpdates.women_wc = updates.facilities.womenWc;
      if (updates.facilities?.menWudu !== undefined) dbUpdates.men_wudu = updates.facilities.menWudu;
      if (updates.facilities?.womenWudu !== undefined) dbUpdates.women_wudu = updates.facilities.womenWudu;
      if (updates.facilities?.womenPrayerArea !== undefined) dbUpdates.women_prayer_area = updates.facilities.womenPrayerArea;

      const { data, error: updateError } = await supabase
        .from('mosques')
        .update(dbUpdates)
        .eq('id', id)
        .select()
        .single();

      if (updateError) {
        throw updateError;
      }

      const updatedMosque = convertDatabaseMosque(data);
      setMosques(prev => prev.map(mosque => mosque.id === id ? updatedMosque : mosque));
      return updatedMosque;
    } catch (err) {
      console.error('Error updating mosque:', err);
      setError(err instanceof Error ? err.message : 'Failed to update mosque');
      throw err;
    }
  };

  // Delete a mosque
  const deleteMosque = async (id: string) => {
    try {
      setError(null);

      const { error: deleteError } = await supabase
        .from('mosques')
        .delete()
        .eq('id', id);

      if (deleteError) {
        throw deleteError;
      }

      setMosques(prev => prev.filter(mosque => mosque.id !== id));
    } catch (err) {
      console.error('Error deleting mosque:', err);
      setError(err instanceof Error ? err.message : 'Failed to delete mosque');
      throw err;
    }
  };

  // Find nearby mosques
  const findNearbyMosques = async (lat: number, lng: number, radiusKm: number = 10) => {
    try {
      setError(null);
      
      const { data, error: nearbyError } = await supabase
        .rpc('find_nearby_mosques', {
          user_lat: lat,
          user_lon: lng,
          radius_km: radiusKm
        });

      if (nearbyError) {
        throw nearbyError;
      }

      return data?.map((mosque: any) => ({
        ...convertDatabaseMosque(mosque),
        distance: mosque.distance_km
      })) || [];
    } catch (err) {
      console.error('Error finding nearby mosques:', err);
      setError(err instanceof Error ? err.message : 'Failed to find nearby mosques');
      return [];
    }
  };

  // Fetch mosques on component mount
  useEffect(() => {
    fetchMosques();
  }, [fetchMosques]);

  return {
    mosques,
    isLoading,
    error,
    addMosque,
    updateMosque,
    deleteMosque,
    findNearbyMosques,
    refetch: fetchMosques,
  };
};