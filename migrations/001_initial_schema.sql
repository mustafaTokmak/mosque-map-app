-- Create mosques table
CREATE TABLE IF NOT EXISTS public.mosques (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL CHECK (type IN ('cami', 'mescit', 'cuma-only')),
    is_public BOOLEAN NOT NULL DEFAULT true,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    address TEXT,
    congregation VARCHAR(255),
    
    -- Facilities
    men_wc BOOLEAN NOT NULL DEFAULT false,
    women_wc BOOLEAN NOT NULL DEFAULT false,
    men_wudu BOOLEAN NOT NULL DEFAULT false,
    women_wudu BOOLEAN NOT NULL DEFAULT false,
    women_prayer_area BOOLEAN NOT NULL DEFAULT false,
    
    -- Metadata
    created_by UUID REFERENCES auth.users(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create index for location queries
CREATE INDEX IF NOT EXISTS idx_mosques_location ON public.mosques (latitude, longitude);
CREATE INDEX IF NOT EXISTS idx_mosques_type ON public.mosques (type);
CREATE INDEX IF NOT EXISTS idx_mosques_is_public ON public.mosques (is_public);
CREATE INDEX IF NOT EXISTS idx_mosques_created_at ON public.mosques (created_at);

-- Enable Row Level Security (RLS)
ALTER TABLE public.mosques ENABLE ROW LEVEL SECURITY;

-- Allow all users to read mosques
CREATE POLICY "Allow public read access to mosques" ON public.mosques
    FOR SELECT USING (true);

-- Allow authenticated users to insert mosques
CREATE POLICY "Allow authenticated users to insert mosques" ON public.mosques
    FOR INSERT WITH CHECK (auth.role() = 'authenticated');

-- Allow users to update their own mosques
CREATE POLICY "Allow users to update their own mosques" ON public.mosques
    FOR UPDATE USING (auth.uid() = created_by);

-- Allow users to delete their own mosques (optional)
CREATE POLICY "Allow users to delete their own mosques" ON public.mosques
    FOR DELETE USING (auth.uid() = created_by);

-- Create function to update updated_at timestamp
CREATE OR REPLACE FUNCTION public.handle_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to automatically update updated_at
CREATE TRIGGER handle_updated_at
    BEFORE UPDATE ON public.mosques
    FOR EACH ROW
    EXECUTE FUNCTION public.handle_updated_at();

-- Optional: Create a function to calculate distance between points
CREATE OR REPLACE FUNCTION public.calculate_distance(
    lat1 DECIMAL, lon1 DECIMAL, lat2 DECIMAL, lon2 DECIMAL
)
RETURNS DECIMAL AS $$
DECLARE
    R DECIMAL := 6371; -- Earth's radius in kilometers
    dLat DECIMAL;
    dLon DECIMAL;
    a DECIMAL;
    c DECIMAL;
BEGIN
    dLat := RADIANS(lat2 - lat1);
    dLon := RADIANS(lon2 - lon1);
    
    a := SIN(dLat/2) * SIN(dLat/2) + 
         COS(RADIANS(lat1)) * COS(RADIANS(lat2)) * 
         SIN(dLon/2) * SIN(dLon/2);
    
    c := 2 * ATAN2(SQRT(a), SQRT(1-a));
    
    RETURN R * c;
END;
$$ LANGUAGE plpgsql;

-- Create function to find nearby mosques
CREATE OR REPLACE FUNCTION public.find_nearby_mosques(
    user_lat DECIMAL, 
    user_lon DECIMAL, 
    radius_km DECIMAL DEFAULT 10
)
RETURNS TABLE (
    id UUID,
    name VARCHAR,
    type VARCHAR,
    is_public BOOLEAN,
    latitude DECIMAL,
    longitude DECIMAL,
    address TEXT,
    congregation VARCHAR,
    men_wc BOOLEAN,
    women_wc BOOLEAN,
    men_wudu BOOLEAN,
    women_wudu BOOLEAN,
    women_prayer_area BOOLEAN,
    created_by UUID,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    distance_km DECIMAL
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        m.*,
        public.calculate_distance(user_lat, user_lon, m.latitude, m.longitude) as distance_km
    FROM public.mosques m
    WHERE public.calculate_distance(user_lat, user_lon, m.latitude, m.longitude) <= radius_km
    ORDER BY distance_km;
END;
$$ LANGUAGE plpgsql;