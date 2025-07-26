-- Add description column to mosques table
-- This allows storing additional information about mosque access, special instructions, etc.

ALTER TABLE mosques 
ADD COLUMN description TEXT;

-- Add comment for documentation
COMMENT ON COLUMN mosques.description IS 'Additional information about the mosque - access instructions, special notes, etc.';

-- Verify the change
\d mosques;