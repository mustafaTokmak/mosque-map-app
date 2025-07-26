-- Make facility columns nullable in the mosques table
-- This allows storing null values to represent unknown facility information

ALTER TABLE mosques 
ALTER COLUMN men_wc DROP NOT NULL,
ALTER COLUMN women_wc DROP NOT NULL,
ALTER COLUMN men_wudu DROP NOT NULL,
ALTER COLUMN women_wudu DROP NOT NULL,
ALTER COLUMN women_prayer_area DROP NOT NULL;

-- Verify the changes
\d mosques;