-- Migration to set false facility values to null
-- This script converts all false facility values to null to represent unknown state

UPDATE mosques 
SET 
  men_wc = CASE WHEN men_wc = false THEN NULL ELSE men_wc END,
  women_wc = CASE WHEN women_wc = false THEN NULL ELSE women_wc END,
  men_wudu = CASE WHEN men_wudu = false THEN NULL ELSE men_wudu END,
  women_wudu = CASE WHEN women_wudu = false THEN NULL ELSE women_wudu END,
  women_prayer_area = CASE WHEN women_prayer_area = false THEN NULL ELSE women_prayer_area END,
  updated_at = NOW()
WHERE 
  men_wc = false 
  OR women_wc = false 
  OR men_wudu = false 
  OR women_wudu = false 
  OR women_prayer_area = false;

-- Show affected rows count
SELECT 
  COUNT(*) as total_mosques,
  COUNT(men_wc) as known_men_wc,
  COUNT(women_wc) as known_women_wc,
  COUNT(men_wudu) as known_men_wudu,
  COUNT(women_wudu) as known_women_wudu,
  COUNT(women_prayer_area) as known_women_prayer_area
FROM mosques;