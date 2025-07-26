-- Reset and Import Mosques Script
-- This script will safely drop all existing mosques and import new data from OpenStreetMap

-- Step 1: Drop all existing mosque data
BEGIN;

-- Disable triggers temporarily for better performance
ALTER TABLE public.mosques DISABLE TRIGGER ALL;

-- Delete all existing mosques
DELETE FROM public.mosques;

-- Reset the sequence if you want to start IDs from 1 again (optional)
-- Note: This won't work with UUID primary keys, but included for reference
-- ALTER SEQUENCE IF EXISTS mosques_id_seq RESTART WITH 1;

-- Re-enable triggers
ALTER TABLE public.mosques ENABLE TRIGGER ALL;

-- Commit the deletion
COMMIT;

-- Step 2: Display current count (should be 0)
SELECT COUNT(*) as "Mosques after deletion" FROM public.mosques;

-- Step 3: Import new mosque data
-- Generated from OpenStreetMap GeoJSON export-- Mosque data import
-- Generated from OpenStreetMap GeoJSON export

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oxford Centre for Islamic Studies',
    'cami',
    51.755803673809524,
    -1.2364995595238095,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Masjid',
    'cami',
    53.678236511111116,
    -1.5131965555555555,
    'Grange Street, Wakefield, WF2 8TF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Da''wah Academy',
    'cami',
    52.6342752,
    -1.1138859176470588,
    'Melbourne Road, Leicester, LE2 0DS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Madina',
    'cami',
    52.640483707142856,
    -1.11946275,
    'Malabar Road, Leicester, LE1 2LG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Khaleel',
    'cami',
    52.63122281999999,
    -1.11138,
    'Donnington Street, Leicester, LE2 0DE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Furqan Islamic Da''wah Association (FIDA)',
    'cami',
    52.62646252857143,
    -1.1071387428571429,
    'Rowsley Street, Leicester, LE5 5JN',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Darassalaam',
    'cami',
    52.5869846862069,
    -0.24358084137931033,
    'Alma Road, Peterborough, PE1 3AW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Muqeet Mosque',
    'cami',
    52.58062286875,
    -1.982944384375,
    'Vicarage Place, Walsall, WS1 3NA',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'South Wales Islamic Centre',
    'cami',
    51.46821085,
    -3.1694593333333336,
    'Alice Street, Cardiff, CF10 5LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Salaam Mosque',
    'cami',
    53.58641100625,
    -0.673826,
    'Cliff Closes Road, Scunthorpe, DN15 7HT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrasa Taleem ul Islam',
    'cami',
    55.840259976,
    -4.278543444,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinatul Uloom Al Islam Mosque',
    'cami',
    52.51526138,
    -1.9992744342857143,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Piety',
    'cami',
    50.37364206666667,
    -4.126875958333334,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anwar-E-Madina',
    'cami',
    53.68003778,
    -1.65642558,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Tabligh Ul Islam Masjid',
    'cami',
    53.7888992,
    -1.78262526,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Central Mosque',
    'cami',
    51.529001889999996,
    -0.165209345,
    'London, NW8 7RG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hounslow Jamia Masjid & Islamic Centre',
    'cami',
    51.45919595714286,
    -0.37485087142857143,
    'Wellington Road South, London Borough of Hounslow, TW4 5HU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Feltham Masjid',
    'cami',
    51.44306564,
    -0.41421578,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anjuman-e-Zinatul Islam',
    'cami',
    53.709427860000005,
    -1.6320996,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitur Raheem Mosque',
    'cami',
    51.479459199999994,
    -3.2137543600000003,
    'Sanatorium Road, Cardiff, CF11 8DG',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leytonstone Mosque',
    'cami',
    51.568231,
    0.012835854545454545,
    'Dacre Road, London, E11 3AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Edinburgh Central Mosque',
    'cami',
    55.945005216666665,
    -3.185841766666667,
    'Potterrow, Edinburgh, EH8 9BT',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Futuh Mosque',
    'cami',
    51.39656632777778,
    -0.19916259444444445,
    'London Road, Morden, SM4 5PT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre of England',
    'cami',
    51.53544426,
    -0.1890614,
    NULL,
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nottingham Islamic Centre',
    'cami',
    52.95757426428571,
    -1.1426819,
    'Curzon Street, Nottingham, NG3 1DG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Peckham Islamic Centre',
    'cami',
    51.467427268,
    -0.069467428,
    'London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zainabiya Islamic Centre',
    'cami',
    52.011460539999995,
    -0.74297514,
    'Peverel Drive, Milton Keynes, MK1 1NW',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Husseini mosque',
    'cami',
    51.54266991904762,
    -0.3639719571428571,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Maidenhead Central Mosque',
    'cami',
    51.52552483333333,
    -0.7167981666666666,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sittingbourne Islamic Cultural Centre',
    'cami',
    51.341906375,
    0.7288350416666667,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame Masjid',
    'cami',
    52.508362160000004,
    -1.9029505400000002,
    'Trinity Road, Birmingham, B6 6AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Holborn Muslim Community & Welfare Association',
    'cami',
    51.51932518571429,
    -0.11144111428571428,
    'Brookes Court, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Derby',
    'cami',
    52.91016690625,
    -1.47643880625,
    'Rose Hill Street, Derby, DE23 8GA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Farooq',
    'cami',
    52.9137546,
    -1.4805651555555555,
    'Mill Hill Lane, Derby, DE23 6SB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre Derby',
    'cami',
    52.91725759285714,
    -1.4763754857142857,
    'Wilmot Street, Derby, DE1 2JR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anware Madina Mosque',
    'cami',
    55.90186441428572,
    -3.4986477,
    'Craingshill Road, Livingston, EH54 5DT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Finsbury Park Mosque',
    'cami',
    51.5635897,
    -0.1056684,
    'Saint Thomas''s Road, London, N4 2QH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Salaam',
    'cami',
    52.90793612,
    -1.47825732,
    'Corden Street, Derby, DE23 8GN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zia-E-Medina',
    'cami',
    52.56949348095238,
    -2.025300695238095,
    'Walsall Road, Sandwell, WS10 9SW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ghamkol Sharif',
    'cami',
    52.46494645263158,
    -1.8585602105263157,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    51.55825929375,
    -0.0546524875,
    'Lea Bridge Road, London, E5 9QD',
    'Madina Mosque Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Derby Jamia Mosque',
    'cami',
    52.8990464,
    -1.485951611111111,
    'Village Street, Derby, DE23 8DE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dorking Mosque',
    'cami',
    51.234008377777776,
    -0.32986045555555554,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Birmingham Central Mosque',
    'cami',
    52.46466696666666,
    -1.89064274,
    'Belgrave Middleway, Birmingham, B12 0XS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Telford Central Mosque',
    'cami',
    52.69873818,
    -2.5171923200000004,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque and Islamic Centre of Brent',
    'cami',
    51.55562919583334,
    -0.2163999875,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sheppey Islamic Cultural Centre',
    'cami',
    51.4223828,
    0.7781012,
    'Minster Road, Minster-on-Sea, ME12 3JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghausia & Community Centre',
    'cami',
    52.58742954615384,
    -1.991147423076923,
    'Birchills Street, Walsall, WS2 8NF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Meadows Muslim Centre',
    'cami',
    52.9374317875,
    -1.143986125,
    'Collygate Road, Nottingham',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'UK Albanian Muslim Community & Cultural Centre',
    'cami',
    51.53279938000001,
    -0.20125600000000002,
    'Carlton Vale, London, NW6 5DA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gousul Azzam Mosque',
    'cami',
    51.45740534,
    -0.07264994,
    'North Cross Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Lebanese Welfare Community',
    'cami',
    51.537399176923074,
    -0.1959375076923077,
    'Brondesbury Road, London, NW6 6AS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamatia Islamic Centre',
    'cami',
    52.44308662307692,
    -1.8604940538461539,
    'Woodlands Road, Birmingham, B11 4ER',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Hub',
    'cami',
    52.42234296,
    -1.77552144,
    'Hermitage Road, Solihull, B91 2LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Hamza',
    'cami',
    52.44942605714286,
    -1.8829061333333332,
    'Church Road, Birmingham, B13 9AE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    53.364139758823534,
    -1.4734004411764707,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hazrat Mujaddid Alf-e Sanni',
    'cami',
    52.452099371428574,
    -1.8739630142857142,
    'Birmingham, B12 8BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dover Masjid',
    'cami',
    51.129051825,
    1.3093619125,
    'Park Place, Dover, CT16 1DQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'IQRA Academy',
    'cami',
    55.930083344,
    -3.167902992,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Oxford Mosque',
    'cami',
    51.74761919259259,
    -1.230891451851852,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Amir-e-Millat',
    'cami',
    52.45542518,
    -1.86600792,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Foresterhill Mosque',
    'cami',
    57.1543372,
    -2.13141618,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Amanah Masjid',
    'cami',
    52.46732251666666,
    -1.8765569166666667,
    'Henley Street, Birmingham, B11 1JB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'New Peckham Mosque',
    'cami',
    51.48446797692308,
    -0.07618195384615384,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ukim Jamia Masjid',
    'cami',
    52.462686070588234,
    -1.863081782352941,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    52.45950498333334,
    -1.8667690166666666,
    'Walford Road, Birmingham, B11 1QA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imam Khoei Islamic Centre',
    'cami',
    51.539454577777775,
    -0.20993134444444445,
    NULL,
    'Imam Al-Khoei Foundation',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Mosque of Brent',
    'cami',
    51.549898295238094,
    -0.2237803476190476,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza Mosque',
    'cami',
    52.508112972727275,
    -1.8807303636363635,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Students House Masjid',
    'cami',
    52.45730352,
    -1.8862522,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zia ul Quran Jamia Mosque',
    'cami',
    52.484961028571426,
    -1.8545909142857142,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Harrow Road Jamme Mosque',
    'cami',
    51.52851095555556,
    -0.20528978888888888,
    'Lancefield Street, London, W10 4NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Barkaat Mosque',
    'cami',
    52.47679661111111,
    -1.8652441277777778,
    'Tilton Road, Birmingham, B9 4PP',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamiat Ahl-e-Hadith & Al-Furquan Education Centre',
    'cami',
    52.90693897999999,
    -1.48910066,
    'Porter Road, Derby, DE23 6RE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khalm-e-Nubudwat Educational Centre',
    'cami',
    52.47736273333333,
    -1.8708152666666666,
    'St Andrews Street, Birmingham, B9 4JT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bordesley Green Islamic Centre',
    'cami',
    52.476880211111116,
    -1.8569493666666668,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami-a-Masjid Idara Minhaj-ul-Quran',
    'cami',
    52.48880117777778,
    -1.8455481333333335,
    'Naseby Road, Birmingham, B8 3HE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jakia Masjid Naqsbandia Aslamia & Community Centre',
    'cami',
    52.49479504,
    -1.8353710200000002,
    'Washwood Heath Road, Birmingham, B8 2HF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Derby Jamia Mosque',
    'cami',
    52.90709768000001,
    -1.47121248,
    'Dairy House Road, Derby, DE23 8HL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Glasgow Central Mosque',
    'cami',
    55.852446113513516,
    -4.251368027027027,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leeds Grand Mosque',
    'cami',
    53.8064763975,
    -1.5681404625000002,
    'Woodsley Road, Leeds, LS6 1SN',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Green Lane Masjid',
    'cami',
    52.473106640000005,
    -1.86412403,
    'Green Lane, Birmingham, B9 5DB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Manchester Central Mosque & Islamic Cultural Centre',
    'cami',
    53.45574559473685,
    -2.2189691947368417,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid & Islamic Centre',
    'cami',
    52.468793719999994,
    -1.85676408,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid & Islamic Centre',
    'cami',
    52.46839681428571,
    -1.8560510000000001,
    'Coventry Road, Birmingham, B10 0LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid & Islamic Centre Darul Uloom Al-Islamah',
    'cami',
    52.46888434444444,
    -1.857267188888889,
    'Coventry Road, Birmingham, B10 0LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Ul Irfan',
    'cami',
    52.47636724,
    -1.85753654,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Mosque Wembley',
    'cami',
    51.550342307142856,
    -0.29790664285714286,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Subshamallah',
    'cami',
    52.470310500000004,
    -1.84267564,
    'Somerville Road, Birmingham, B10 9DT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Tawheed Mosque',
    'cami',
    55.84179116470588,
    -4.1777503764705886,
    'Braidfauld Street, Glasgow, G32 8PJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hazrat Shah-e-Walayat Education Centre',
    'cami',
    52.46384458571429,
    -1.8486768,
    'Oldknow Road, Birmingham, B10 0JA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ul Imam Il Bukhari',
    'cami',
    52.657815155555554,
    -1.1217716,
    'Loughborough Road, Leicester, LE4 5LR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tendring Deen Education Centre',
    'cami',
    51.79161445999999,
    1.14976628,
    'Clacton-on-Sea, CO15 1NJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Taqw',
    'cami',
    52.462445655555555,
    -1.8815370333333332,
    'Kyrwicks Lane, Birmingham, B11 1SS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ayesha',
    'cami',
    51.5877858,
    -0.07849574285714286,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Bilal',
    'cami',
    52.4555889125,
    -1.895990425,
    'Willows Crescent, Birmingham, B12 9NS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nimab Trust Mosque',
    'cami',
    52.48890720000001,
    -1.87336906,
    'Duddeston Mill Road, Birmingham, B7 4QN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aisha Masjid & Islamic Centre',
    'cami',
    51.45504254285714,
    -0.9365431,
    'London Road, Reading, RG6 1BW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Noor',
    'cami',
    53.765485121428576,
    -2.69462935,
    'Noor Street, Preston, PR1 1QS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza Masjid',
    'cami',
    53.765875199999996,
    -2.6959642588235293,
    'St Paul''s Road, Preston, PR1 1UH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Salaam',
    'cami',
    53.77793204117647,
    -2.7018293411764707,
    'Watling Street Road, Preston, PR2 8EA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Islamic Cultural Society',
    'cami',
    51.58730863333333,
    -0.10910746666666667,
    'Wightman Road, London, N8 0NA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque Noor-ul-Uloom',
    'cami',
    52.46991497142857,
    -1.8507124857142858,
    'St Oswalds Road, Birmingham, B10 9RB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Witton Islamic Centre',
    'cami',
    52.51057384999999,
    -1.8878833166666666,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wakefield Central Mosque',
    'cami',
    53.6799525,
    -1.48758586,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Sawafia Mosque',
    'cami',
    53.68150538,
    -1.48603132,
    'Park Hill Lane, Wakefield, WF1 4NJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aston Mosque & Community Centre',
    'cami',
    52.502940349999996,
    -1.8879302833333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid E Noor',
    'cami',
    52.501671699999996,
    -1.8856726600000002,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Hijrah Mosque',
    'cami',
    52.4742306,
    -1.83927646,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qamarul Islam Mosque',
    'cami',
    52.47176554285714,
    -1.832349342857143,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shacklewell Lane Mosque',
    'cami',
    51.551020055555554,
    -0.0740282111111111,
    'Shacklewell Lane, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    53.687643019999996,
    -1.4924485600000001,
    'Wakefield, WF1 3PD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamme Masjid Reading',
    'cami',
    51.44824218333333,
    -0.9522668666666667,
    'Alexandra Road, Reading, RG1 5PF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Elgin Mosque',
    'cami',
    57.646873500000005,
    -3.317870155555555,
    'South Street, Elgin, IV30 1JG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Hanfia Ghousia',
    'cami',
    52.1326165,
    -0.483329,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Solihull Central Masjid and Community Centre',
    'cami',
    52.40900945,
    -1.761431575,
    'Warwick Road, Solihull, B91 3HG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Olton Project',
    'cami',
    52.43700221875,
    -1.8092019375000001,
    'Kineton Green Road, Solihull, B92 7DY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imam Ali Centre',
    'cami',
    51.46552031,
    -3.1671055200000002,
    'Mount Stuart Square',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Essex Jamme Masjid Trust',
    'cami',
    51.545889939999995,
    0.7033379999999999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mohiuddin Jamia Masjid & Education Centre',
    'cami',
    55.97223242,
    -3.175144606666667,
    'Great Junction Street, Edinburgh, EH6 5JB',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qurani Murkuz',
    'cami',
    51.59294306,
    0.028556000000000005,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anwar-E-Madina Mosque and Community Centre',
    'cami',
    55.9605522,
    -3.1852611285714287,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Umer',
    'cami',
    51.578417909090916,
    -0.023242136363636364,
    'Queen''s Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Jamia Mosque',
    'cami',
    53.35874475,
    -1.4730870916666667,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Easton Jamia Masjid',
    'cami',
    51.467212716666666,
    -2.564552377777778,
    'Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghousia Reading Islamic Centre',
    'cami',
    51.452401099999996,
    -0.96411186,
    'South Street, Reading, RG1 4QU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Mosque',
    'cami',
    51.48369879545455,
    -3.200420809090909,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    50.90939878333333,
    -1.3996623833333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bait-ul-Aziz Islamic Cultural Centre',
    'cami',
    51.497505205,
    -0.09439499,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Mosque',
    'cami',
    51.511707114285706,
    -0.06434281428571428,
    'Christian Street, London, E1 1SE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Al-Arqam',
    'cami',
    55.94452142222222,
    -3.2001455138888892,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Norwich and Norfolk Community Centre',
    'cami',
    52.635395933333335,
    1.2668626666666667,
    'Dereham Road, Norwich, NR2 3UU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    53.39421884615385,
    -1.4307056461538463,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    51.38430304,
    0.5447374199999999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noor El Islam Mosque',
    'cami',
    51.4727936,
    -3.17327055,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Taha',
    'cami',
    51.537032399999994,
    -0.004235233333333334,
    'Park Lane, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Elahi Jame Mosque',
    'cami',
    53.389352654545455,
    -1.4238789090909092,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia',
    'cami',
    53.390083133333334,
    -1.4160518222222223,
    'Industry Road, Sheffield, S9 5FP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar al-Islam Foundation',
    'cami',
    51.553598793333336,
    -0.21700982666666668,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    53.410998618181814,
    -1.3960549181818183,
    'Bawtry Road, Sheffield, S9 1WZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zain Abiya',
    'cami',
    51.46094216,
    -1.03769656,
    'Reading',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bournemouth Islamic Centre & Central Mosque',
    'cami',
    50.72185714444444,
    -1.8800530555555557,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Grimesthorpe Academy',
    'cami',
    53.397923007692306,
    -1.4545302307692307,
    'Grimesthorpe Road, Sheffield, S4 7EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Ul Aloom Saddiqia',
    'cami',
    53.3938094,
    -1.4595333181818182,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Noor-Us-Sunnah',
    'cami',
    52.47623170526316,
    -1.8401452789473685,
    'Yardley Green Road, Birmingham, B9 5QF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Foundation Dagenham East Islamic Centre',
    'cami',
    51.54577184285714,
    0.16512167142857143,
    'Rainham Road South, Dagenham, RM10 7XJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abu Bakr Masjid',
    'cami',
    51.4569937,
    -0.9959902111111111,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bristol Jamia Mosque',
    'cami',
    51.442154518181816,
    -2.581578318181818,
    'Green Street, Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Haroonia',
    'cami',
    52.48912755,
    -1.8311762666666667,
    'Alum Rock Road, Birmingham, B8 3PX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Brick Lane Jamme Masjid',
    'cami',
    51.519480953846156,
    -0.07204896153846153,
    'Brick Lane, London, E1 6QL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Trowbridge Mosque',
    'cami',
    51.31601482,
    -2.20270748,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'York Mosque',
    'cami',
    53.95623218181818,
    -1.0636071272727272,
    'Bull Lane, York, YO10 3EN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'York Mosque',
    'cami',
    53.95631216923077,
    -1.0639695153846154,
    'Bull Lane, York, YO10 3EN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bridgwater Islamic Centre',
    'cami',
    51.126997683333336,
    -3.003645425,
    'Friarn Street, Bridgwater, TA6 3LH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladeshi Islamic Centre & Jami Mosque',
    'cami',
    52.501606711111116,
    -1.9101898000000002,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque and Islamic Welfare Association Lozells',
    'cami',
    52.50127718888889,
    -1.911800411111111,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Sunni Jame Masjid & Islamic Community Centre',
    'cami',
    52.50344086,
    -1.89631018,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aston Masjid',
    'cami',
    52.5045291,
    -1.89968316,
    'Mansfield Road, Birmingham, B6 6DA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal (R:) Sunnia Mosque & Islamic Community Centre',
    'cami',
    52.50478493333333,
    -1.8932603666666665,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Faizal Islam',
    'cami',
    52.51004952857143,
    -1.8899508428571428,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-Al-Falaah, Kokni Muslim Association',
    'cami',
    52.50830817142857,
    -1.9008683071428571,
    'Trinity Road, Birmingham, B6 6AL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Ikhlas & Cambridge Islamic Centre',
    'cami',
    52.1987896,
    0.1388635,
    'Devonshire Road, Cambridge, CB1 2BH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abubakr Siddiq Islamic Centre',
    'cami',
    52.20016826666667,
    0.1361387,
    'Mawson Road, Cambridge, CB1 2DZ',
    'Cambridge Muslim Welfare Society',
    true,
    false,
    true,
    false,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Huda',
    'cami',
    52.64274702222222,
    -1.1270813222222222,
    'Britannia Street, Leicester, LE1 3LE',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    50.8241215375,
    -0.153878925,
    'Bedford Place, Brighton, BN1 2PT',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'AL-Jamat-Ul-Muslimin of Bangladesh',
    'cami',
    52.24336728181818,
    -0.8988345727272727,
    'Saint George''s Street, Northampton, NN1 2TR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Keele University Islamic Centre',
    'cami',
    53.00531022,
    -2.2722754800000002,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makkah Masjid Mosque',
    'cami',
    53.810967184615386,
    -1.5730973615384616,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khizra Mosque',
    'cami',
    53.50558564000001,
    -2.23762486,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Quwwat ul Islam Masjid',
    'cami',
    51.544439461290324,
    0.02578616129032258,
    'Upton Lane, London, E7 9LN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Yousuf',
    'cami',
    51.546472928571426,
    0.0286437,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Forest Gate Mosque',
    'cami',
    51.547715225,
    0.034818133333333334,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Abdullah Bin Masoud',
    'cami',
    52.451523740000006,
    -1.8596832500000002,
    'Evelyn Road, Birmingham, B11 3JJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid and Islamic Centre',
    'cami',
    51.51861258,
    -0.59903038,
    'Slough',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Scotland Islamic Centre',
    'cami',
    56.11347491111111,
    -3.9330104444444447,
    'Burghmuir Road, Stirling, FK7 7NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Mosque',
    'cami',
    53.870492420000005,
    -1.9022034399999999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bradford Central Mosque',
    'cami',
    53.797892468421054,
    -1.759961789473684,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Hanfia Mosque',
    'cami',
    53.805701825,
    -1.76970335,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bedford Central Jamee Masjid',
    'cami',
    52.13696588571429,
    -0.47452967142857144,
    'Brereton Road, Bedford, MK40 1HU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North Jamia Watford Mosque',
    'cami',
    51.6825652,
    -0.4018021,
    '167 N Western Ave, Watford, Watford, WD25 0AQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al‐Mahdi Mosque',
    'cami',
    53.8010754625,
    -1.74463694375,
    'Rees Way, Bradford, BD3 0DZ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Fath',
    'cami',
    51.51496705555556,
    -0.029063733333333334,
    'Burdett Road, London, E14 7DQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Canterbury Islamic Centre',
    'cami',
    51.296340176923074,
    1.0648527461538462,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah jalal Mosque & Centre',
    'cami',
    52.778130340000004,
    -1.20569254,
    'Rendell Street, LE11 1LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khazra Central Mosque',
    'cami',
    55.840533122222226,
    -4.260529477777777,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre',
    'cami',
    51.51331257142857,
    -0.1344759857142857,
    'Berwick Street, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bristol Central Mosque',
    'cami',
    51.46199282,
    -2.56274588,
    'Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sutton Central Masjid',
    'cami',
    51.36243855333333,
    -0.1883411866666667,
    'Carshalton Road, Sutton, SM1 4LF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Crawley Mosque',
    'cami',
    51.09751893548387,
    -0.21388527096774193,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hasrat Shahjal Al Mosque',
    'cami',
    51.56497598181818,
    -1.7802927090909089,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Madina',
    'cami',
    51.90018082857143,
    -2.070013842857143,
    'Sherborne Place, Cheltenham, GL52 2RS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shipley Masjid',
    'cami',
    53.83331091666667,
    -1.7793887333333334,
    'Windsor Road, Shipley, BD18 3EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bashir Ahmed Masjid',
    'cami',
    50.923106077777774,
    -1.394992788888889,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ad Duha Institute',
    'cami',
    52.437857975,
    -1.8469894875,
    'Stratford Road, Birmingham, B28 8AF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Cultural & Education Centre',
    'cami',
    52.445069366666665,
    -1.8632196500000002,
    'Greswolde Road, Birmingham, B11 4DL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mu''eed',
    'cami',
    52.18220551666667,
    0.14998763333333334,
    'Mowbray Road, Cambridge, CB1 7SY',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Exeter Mosque',
    'cami',
    50.72918418,
    -3.52507497,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Bhokari Education Centre',
    'cami',
    52.4477175625,
    -1.857946125,
    'Knowle Road, Birmingham, B11 3AW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North London Mosque',
    'cami',
    51.56492815,
    -0.068826125,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Masjid Bilal',
    'cami',
    53.812760499999996,
    -1.513588675,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shia Community Centre Edinburgh',
    'cami',
    55.973775327272726,
    -3.1760145363636365,
    'King Street, Edinburgh, EH6 6TN',
    'Wali-Al-Asir Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ar Rahman SCT',
    'cami',
    51.739001015384616,
    -0.3332898846153846,
    'Abbots Avenue, St Albans, AL1 2HX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Society of Airdrie & Coatbridge',
    'cami',
    55.86129246,
    -4.0050206,
    'Quarry Street, Coatbridge, ML5 3PU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Risalah',
    'cami',
    53.38930262857143,
    -1.4816169142857143,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makii Marjid & Madrassa',
    'cami',
    52.5051544875,
    -1.931350775,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Madni',
    'cami',
    53.72321380869565,
    -1.8722637391304349,
    'Gibbet Street, Halifax',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jameah Fatimiah Mosque',
    'cami',
    52.970658033333336,
    -1.1642642416666666,
    'Berridge Road, Nottingham, NG7 6HT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baytul ''Ilm',
    'cami',
    52.640040376923075,
    -1.1083138230769232,
    'Spinney Hill Road, Leicester, LE5 3GH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Jame Masjid',
    'cami',
    51.47073836,
    -2.5640507,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Harrow Central Mosque',
    'cami',
    51.589144645454546,
    -0.33228986363636365,
    'Station Road, Harrow, HA1 2SQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Abu Bakr Jamia Masjid',
    'cami',
    50.90990455,
    -1.39740209,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Loughborough Mosque and Islamic Cultural Association',
    'cami',
    52.769503566666664,
    -1.198104425,
    'King Street, Loughborough, LE11 1SB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Basingstoke Mosque',
    'cami',
    51.2635129,
    -1.09230392,
    'Sarum Hill, Basingstoke, RG21 8SS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Redcoat Community Centre and Mosque',
    'cami',
    51.51654349166666,
    -0.0484026,
    'Stepney Way, London, E1 3DW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Ihsan Mosque and Islamic Centre',
    'cami',
    52.62718695,
    1.2889939375000001,
    'Chapelfield East, Norwich, NR2 1SF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'ShahJahil Jami Masjid',
    'cami',
    52.45792936,
    -1.86667992,
    'Medlicott Road, Birmingham, B11 1UG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ahl-e-hadith',
    'cami',
    53.71984977142857,
    -1.8858129857142856,
    'Hopwood Lane',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz Quba',
    'cami',
    52.62860388,
    -1.1188454399999999,
    'Tichborne Street, Leicester, LE2 0NQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ali',
    'cami',
    52.639481546153846,
    -1.094160253846154,
    'Smith Dorrien Road, Leicester, LE5 4BG',
    'sunni',
    true,
    true,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar al Aloom Qadmia Jilamia',
    'cami',
    51.583806485714284,
    -0.0145272,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Amaan Mosque',
    'cami',
    53.462147380000005,
    -2.2392752766666666,
    'Greenheys Lane, Manchester, M15 6NQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    51.58486916842105,
    -0.02753695789473684,
    'Mansfield Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Mosque & Madrisa (Highfield Branch)',
    'cami',
    53.8687091,
    -1.9104651,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Jami Masjid & Jamia Quraniah',
    'cami',
    53.86671004,
    -1.9105174200000001,
    'Keighley, BD21 2AH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sakina Trust Centre',
    'cami',
    51.582940737499996,
    -0.0131550125,
    'Vestry Road',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Corby Central Masjid',
    'cami',
    52.4878125,
    -0.6976592,
    'Stuart Road, Corby, NN17 1RL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre of Edgware',
    'cami',
    51.6080623047619,
    -0.2737345523809524,
    'Deansbrook Road, London Borough of Barnet, HA8 9BE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Firdaws Mosque',
    'cami',
    53.78857406923077,
    -1.7481682307692308,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North Finchley Mosque',
    'cami',
    51.61147171111111,
    -0.17613664444444443,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ahad',
    'cami',
    51.58738794166666,
    -0.026941466666666667,
    'Erskine Road, London, E17 6SA',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Furqan',
    'cami',
    52.64080413333334,
    -1.12582575,
    'Kamloops Crescent, Leicester, LE1 2HX',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Sultania And Education Centre',
    'cami',
    52.95200565,
    -1.1259223714285713,
    'Sneinton Dale, Nottingham, NG2 4HE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahporan Masjid',
    'cami',
    53.45085838,
    -2.20187526,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Banbury Makkah Masjid (Spiritual Centre)',
    'cami',
    52.063292309999994,
    -1.3461719300000001,
    'Boxhedge Road, Banbury, OX16 0BP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aberystwyth Masjid',
    'cami',
    52.41277892727273,
    -4.074769854545455,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ipswich & Suffolk Bangladeshi Muslim Community Centre and Mosque',
    'cami',
    52.05592239285714,
    1.1600915,
    'Bond Street, Ipswich, IP4 1JE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Beeston Muslim Centre',
    'cami',
    52.92774791000001,
    -1.20482449,
    'Evelyn Street, Nottingham, NG9 2EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Omar Faruque Mosque and Cultural Centre',
    'cami',
    52.232028328571424,
    0.13576652857142857,
    'Kirkwood Road, Cambridge, CB4 2PF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Mosque',
    'cami',
    53.681031294117645,
    -1.6282223235294118,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Zakaria',
    'cami',
    53.6839864,
    -1.6311976909090908,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    52.41768759230769,
    -1.5028998692307691,
    'George Street, Coventry',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Islam Centre',
    'cami',
    51.59009247,
    -0.00369031,
    'Corbett Road, London, E17 3JZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-at-Tauwheed Mosque',
    'cami',
    52.6133611090909,
    1.7264982727272729,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Grantham Islamic Centre',
    'cami',
    52.912804725,
    -0.64146005,
    'Elmer Street North, Grantham, NG31 6RE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Basford Culture Centre',
    'cami',
    52.97941891333333,
    -1.17246608,
    'Nottingham Road, Nottingham, NG7 7EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    52.9643293,
    -1.1781163,
    'Alfreton Road, Nottingham, NG7 5NG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shoreditch Masjid Trust',
    'cami',
    51.52456195,
    -0.07483125,
    'Redchurch Street, London, E2 7DJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal masjid',
    'cami',
    51.38365225454545,
    -0.10860953636363636,
    'Handcroft Road, Croydon, CR0 3LE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jemia Mosque',
    'cami',
    53.43108642,
    -1.36433402,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Islamia Razvia (reg)',
    'cami',
    52.45254233636364,
    -1.8278309272727271,
    'Alexander Road, Birmingham, B27 6ET',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ahlul Bayt Centre',
    'cami',
    51.738183459999995,
    -1.2194770266666666,
    'Oxford Road, Oxford, OX4 2EN',
    'Ahlul Bayt Centre Oxford',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Subhan Mosque',
    'cami',
    51.38396844545455,
    -0.10373985454545455,
    'St James Road, Croydon, CR0 2US',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid',
    'cami',
    52.97092635625,
    -1.17381989375,
    'Gladstone Street, Nottingham, NG7 6GA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Imam Ali',
    'cami',
    51.5571243,
    -0.31951174,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Airdrie & Coatbridge Islamic Centre',
    'cami',
    55.866665690909095,
    -3.9849210636363637,
    'Bell Street, Airdrie, ML6 0BS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Risaalah Mosque & Islington Islamic Centre',
    'cami',
    51.557532333333334,
    -0.12027166666666668,
    'Parkhurst Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kings Heath Mosque',
    'cami',
    52.43592563846153,
    -1.896724153846154,
    'Station Road, Birmingham, B14 7TA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darus Salaam Mosque',
    'cami',
    51.51004854705883,
    -0.37308674705882355,
    'Boyd Avenue, Southall, UB1 3BT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faiza-e-Madinah Wembley',
    'cami',
    51.56223137777778,
    -0.2900682333333333,
    'Forty Avenue, HA9 8JW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    55.88221203636363,
    -4.363734218181818,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Madrassa & Spiritual Centre',
    'cami',
    52.5769668875,
    -0.25444365,
    'Midland Road, Peterborough, PE3 6DD',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalia Jamme Masjeed',
    'cami',
    51.645953,
    -0.0471082625,
    'High Street, Ponders End, EN3 4EZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mohammedi Islamic Centre',
    'cami',
    52.45955728333333,
    -1.86338175,
    'Walford Road, Birmingham, B11 1QJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East London Mosque',
    'cami',
    51.517372377777775,
    -0.06534177777777778,
    'Whitechapel Road, London, E1 1JQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Zahra Foundation',
    'cami',
    52.94722787619048,
    -1.1734908142857143,
    'Osmaston Street, Nottingham, NG7 1SD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Salahuddin',
    'cami',
    51.51630126923077,
    -0.17153140769230768,
    'Norfolk Place',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Broomhouse Mosque',
    'cami',
    55.928442637931035,
    -3.2770693793103445,
    'Broomhouse Crescent, Edinburgh, EH11 3RH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Croydon Mosque & Islamic Centre',
    'cami',
    51.389477776666666,
    -0.11263060666666667,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bournemouth Jamei Mosque',
    'cami',
    50.74247011,
    -1.8770529100000002,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abu Huraira',
    'cami',
    52.64150115,
    -1.0940042166666666,
    'Haynes Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Northfields Education Centre',
    'cami',
    52.65258143636363,
    -1.0955175363636362,
    'Essex Road, Leicester, LE4 9EE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wirral Deen Centre',
    'cami',
    53.385356916666666,
    -3.0323541499999997,
    'Borough Road, Birkenhead',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Hidayah',
    'cami',
    53.46119517857143,
    -2.27515445,
    'Humphrey Road, Manchester, M16 9DD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stoke-on-Trent Muslim Welfare and Community Centre',
    'cami',
    53.0175781,
    -2.1866303,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Community Centre',
    'cami',
    51.3758621,
    0.53934805,
    'Thorold Road, Chatham, ME5 7DR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghousia',
    'cami',
    52.19351291,
    -2.21066678,
    'Worcester, WR5 1JU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinah Masjid & Community Centre',
    'cami',
    55.87532672105263,
    -3.104969357894737,
    'Lothian Street, Bonnyrigg, EH19 3AD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladeshi Islamic Association Centre',
    'cami',
    52.50056712000001,
    -1.96598398,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Baitul Amaan',
    'cami',
    52.5020387875,
    -1.9678568625,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qadria Trust Islamic Education',
    'cami',
    52.4572443375,
    -1.8736581625,
    'Alfred Street, Birmingham, B12 8JL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Karam Mosque',
    'cami',
    51.542514016666665,
    0.03665316666666667,
    'Katherine Road, London, E7 8LT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressa Islamiyah (old madressah)',
    'cami',
    53.70972388333333,
    -1.6373504416666667,
    NULL,
    'Mount Pleasant Islamic Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madina Jami Masjid',
    'cami',
    52.19645852,
    -2.21079744,
    'Worcester, WR4 9PS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia al Karim',
    'cami',
    51.86083140666666,
    -2.237907933333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Stratford',
    'cami',
    51.54920618888889,
    0.0016172777777777776,
    'Brydges Road, London, E15 1NA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Holloway Mosque',
    'cami',
    51.55097811666667,
    -0.10984326666666666,
    'Holloway Road, London, N7 8DD',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Islamic Turkish Association',
    'cami',
    51.55270828333334,
    -0.08661941666666667,
    'Green Lanes, London, N16 9ND',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Rahma Mosque',
    'cami',
    53.394337612499996,
    -2.9606290625,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Surma Islamic Education Centre Madrassa & Masjid',
    'cami',
    52.461755653846154,
    -1.8524463846153847,
    'Waverley Road, Birmingham, B10 0EP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Green Oak Academy (Kings Heath)',
    'cami',
    52.4224836,
    -1.8926200333333334,
    'Alcester Road South, Birmingham, B14 6DR',
    'Green Oak Academy',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Madina Mosque',
    'cami',
    52.58032755999999,
    -0.248965324,
    'Gladstone Street, Peterborough, PE1 2BN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid AlBirr',
    'cami',
    52.304388800000005,
    -1.93796336,
    'Redditch, B98 7AZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Redditch New Mosque',
    'cami',
    52.30065168888889,
    -1.9365609666666666,
    'Redditch, B98 7AZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Rizvia',
    'cami',
    52.483197100000005,
    -2.12336576,
    'Albion Street, Brierley Hill, DY5 3EE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'City Jamia Masjid',
    'cami',
    53.46195928888889,
    -2.20773905,
    'Stockport Road, M13 0LF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wolverhampton Central Mosque',
    'cami',
    52.59609634615385,
    -2.1299989153846153,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Masjid',
    'cami',
    52.056482,
    1.16547188,
    'St Helens Street, Ipswich, IP4 2LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leamington Road Mosque',
    'cami',
    53.75070988888889,
    -2.5014628777777776,
    'Leamington Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Atta Mosque',
    'cami',
    52.58315378571428,
    -2.1015529285714285,
    'Willenhall Road, Wolverhampton, WV1 2HT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Hafeez Mosque',
    'cami',
    52.95597784,
    -1.11713232,
    'Sneinton Dale, Nottingham, NG3 7DN',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stepney Shahjalal Mosque & Cultural Centre',
    'cami',
    51.520186100000004,
    -0.04083906,
    'Duckett Street, London, E1 4TD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nottingham Alevi Cultural Centre & Cemevi',
    'cami',
    52.95518681428571,
    -1.1356965714285714,
    'Handel Street, Nottingham, NG3 1JE',
    'alevi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazul Uloom',
    'cami',
    51.54992688,
    -0.07402906000000001,
    'Sandringham Road, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Mosque',
    'cami',
    51.06092442222222,
    -0.32301391111111116,
    'Park Terrace East, Horsham, RH13 5DN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque & Islamic Centre',
    'cami',
    52.473369118181814,
    -2.0755851454545455,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Mosque',
    'cami',
    53.1990105,
    -2.9245661428571426,
    'CH1 5LT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nasir Mosque',
    'cami',
    54.69312547,
    -1.216318985,
    'Brougham Terrace, Hartlepool, TS24 8EY',
    'ahmadiyya',
    true,
    true,
    true,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'City Central Mosque',
    'cami',
    53.018358552,
    -2.177008632,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Suleymaniye Mosque',
    'cami',
    51.535316442857145,
    -0.0764567142857143,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jahan Mosque',
    'cami',
    51.32267792222222,
    -0.5445345222222222,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladeshi Isalmic Social Organisation & Modina Mosque',
    'cami',
    52.4562812375,
    -1.8856347125,
    'Moseley Road, Birmingham, B12 9AE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'West London Islamic Centre & Greenford Mosque',
    'cami',
    51.52691594,
    -0.35194359999999997,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid UKIM',
    'cami',
    51.51044542727273,
    -0.32629915454545455,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aisha Mosque & Islamic Centre',
    'cami',
    52.576699715,
    -1.9849999449999998,
    'Rutter Street, Walsall, WS1 4HJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    52.5764009875,
    -1.9911085,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Yusuf',
    'cami',
    51.5658972375,
    -0.12071225000000001,
    'Hornsey Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hussaini Islamic Mission & Ali (AS) Mosque, Shia Muslim Community & Welfare Centre',
    'cami',
    52.595392588888885,
    -2.1522594666666666,
    'Newhampton Road West, Wolverhampton, WV6 0RS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ibraheem',
    'cami',
    53.773143688888894,
    -1.5488157333333334,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'NMC Centre & Masjid',
    'cami',
    53.262241259999996,
    -2.5061839,
    'Church Road, Northwich, CW9 5NT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Cultural Centre',
    'cami',
    53.32011068571428,
    -3.4931369571428568,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Galler Turkish Mosque',
    'cami',
    53.31560602727273,
    -3.478132727272727,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ghafoor Mosque',
    'cami',
    52.46409408181818,
    -2.0293492181818182,
    'Long Lane, Halesowen, B62 9JT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Blackheath',
    'cami',
    52.47073375294117,
    -2.035169094117647,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Mosque',
    'cami',
    51.499288899999996,
    -0.38476438749999997,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Redhill Islamic Centre',
    'cami',
    51.22818454285714,
    -0.17208914285714286,
    'Earlswood Road, Redhill, RH1 6HW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chesham Mosque',
    'cami',
    51.71192202727273,
    -0.6143385454545455,
    'Bellingdon Road, Chesham, HP5 2NN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gillani Noor Mosque',
    'cami',
    52.981011220000006,
    -2.12143836,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Londra Diyanet Camii',
    'cami',
    51.588036233333334,
    -0.11754528333333332,
    'High Street, London, N8 7FB',
    'Turkish Religious Foundation of the United Kingdom',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madni Masjid',
    'cami',
    52.97144605,
    -1.1613991333333333,
    'Alberta Terrace, Nottingham, NG7 6JA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Da''watul Islam Mosque',
    'cami',
    53.64957895,
    -2.622516475,
    'Charnock Street, Chorley, PR6 0NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Bilaal',
    'cami',
    53.76289264444445,
    -2.4739480333333335,
    'Cedar Street, Blackburn',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Islamic Centre',
    'cami',
    51.4729261875,
    -2.5583478375,
    'Fishponds Road, Bristol, BS5 6PR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Kharza',
    'cami',
    52.98643236470588,
    -1.1802039235294117,
    'Queensberry Street, Nottingham, NG6 0DG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Surrey Muslim Centre',
    'cami',
    51.37443838,
    -0.4795983,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Cultural Centre Wollaton',
    'cami',
    52.95656825,
    -1.19389503,
    'Radford Bridge Road, Nottingham, NG8 1NB',
    'Karimia Institute',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ghausia Qasmia & Community Hub',
    'cami',
    52.57849531428571,
    -1.9827815999999998,
    'Mount Street, Walsall, WS1 3PJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Farooq',
    'cami',
    52.57571847777778,
    -1.9895671222222222,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Syeda Fatima Zahra Centre',
    'cami',
    52.587748257142856,
    -1.9915118714285713,
    'Birchills Street, Walsall, WS2 8NF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalia Sunni Jami Masjid & Islamic Education Centre',
    'cami',
    52.5776509,
    -1.9801623799999999,
    'Bath Street, Walsall, WS1 3BX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Jami Masjid & Madrasah',
    'cami',
    52.5784081,
    -1.9831629333333334,
    'Hart Street, Walsall, WS1 3PE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Usman',
    'cami',
    52.57795239166666,
    -1.9839380416666668,
    'Brace Street, Walsall, WS1 3PS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque & Islamic Centre',
    'cami',
    53.52921652,
    -2.1171046000000002,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Noor',
    'cami',
    53.460692810344824,
    -2.2629884413793104,
    'Stamford Street, Trafford, M16 9LT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Imdadia',
    'cami',
    53.46096757142857,
    -2.2665716571428574,
    'Blackburn Street, Trafford, M16 9LJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zakaria Mosque',
    'cami',
    53.44810474,
    -2.25889554,
    'Clarendon Road, M16 8LD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tees Valley Muslim Community Centre',
    'cami',
    54.54713286363637,
    -1.3249509272727273,
    'Sopwith Close, Stockton-on-Tees, TS18 3TT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Majadidia Taleem-ul-quran',
    'cami',
    52.469574939999994,
    -1.84150824,
    'Somerville Road, Birmingham, B10 9DU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Jame Mosque',
    'cami',
    52.30282651428571,
    -0.6874092428571429,
    'Winstanley Road, Wellingborough, NN8 1JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hethersett Masjid',
    'cami',
    52.60228798461538,
    1.1780191230769232,
    'Henstead Road, Norwich, NR9 3JH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Umar',
    'cami',
    52.57030938571428,
    -2.026749667857143,
    'Bills Street, Walsall, WS10 8BB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    53.43134634166666,
    -1.368398375,
    'College Road, Rotherham, S60 1JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Moorlands Islamic Centre',
    'cami',
    54.04630336,
    -2.79227612,
    'Dumbarton Road, Lancaster, LA1 3BX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    53.42555231111111,
    -1.350805211111111,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Abu Bakr Mosque',
    'cami',
    53.43763403333333,
    -1.34963295,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar-ul Islam Central Mosque',
    'cami',
    54.57050408,
    -1.23116124,
    'Southfield Road, Middlesbrough, TS1 3EX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bexhill Masjid & Islamic Centre',
    'cami',
    50.84139772727272,
    0.4741874090909091,
    'Clifford Road, Bexhill-on-Sea, TN40 1QA',
    'Bexhill Islamic Association',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Muntada Al-Islami Trust',
    'cami',
    51.4763640625,
    -0.2015855375,
    'Bridges Place, London, SW6 4HW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Greenbank Masjid',
    'cami',
    51.46787117,
    -2.55781561,
    'Bristol',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Awliya Allah',
    'cami',
    54.95620905714286,
    -1.6033798285714285,
    'Ely Street, Gateshead, NE8 1NR',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islah-Ul-Muslimeen',
    'cami',
    52.3028912,
    -0.6868129500000001,
    'Winstanley Road, Wellingborough, NN8 1JD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid us Sunnah',
    'cami',
    52.61689316,
    -1.1261164,
    'Welford Road, Leicester, LE2 6BD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    52.62423525,
    -1.1019398,
    'Evington Drive, Leicester, LE5 5PF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tawfiq Masjid & Centre',
    'cami',
    51.45344809000001,
    -2.56281463,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Blackhall Mosque',
    'cami',
    55.96126363,
    -3.257578475,
    'House O'' Hill Road, Edinburgh, EH4 2AJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Jamia Suffa-Tul-Islam Grand Mosque',
    'cami',
    53.78428192727272,
    -1.7691278681818183,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kirkcaldy Central Mosque',
    'cami',
    56.130920200000006,
    -3.17510516,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Noor',
    'cami',
    53.639126839999996,
    -1.7976599149999999,
    'Crosland Road, Huddersfield, HD1 3JS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Rugby Mosque',
    'cami',
    52.37455826,
    -1.25147376,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Madina Mosque Barking',
    'cami',
    51.544148778571426,
    0.07754707142857142,
    'Victoria Road, Barking, IG11 8PY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Alnoor',
    'cami',
    51.53075244285714,
    0.08140851428571429,
    'Gascoigne Road, Barking, IG11 7LH',
    NULL,
    true,
    true,
    true,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Jamia Masjid',
    'cami',
    54.969173071428564,
    -1.6401396857142856,
    'Malvern Street, Newcastle upon Tyne, NE4 6SU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Langley Green Islamic Centre & Mosque',
    'cami',
    51.1310324076923,
    -0.18643714615384613,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noor Mosque',
    'cami',
    51.126461981818174,
    -0.19270974545454544,
    'Langley Drive, Crawley, RH11 7TF',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Banbury Madni Masjid',
    'cami',
    52.06181951999999,
    -1.3250321,
    'Merton Street, Banbury, OX16 4RP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Islamia Education Centre',
    'cami',
    52.96332876666667,
    -1.1697215333333333,
    'Hubert Street, Nottingham, NG7 5AJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Portsmouth Hafiziah Madrasah',
    'cami',
    50.785659758823535,
    -1.0842201470588235,
    'Marmion Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gilwell Mosque',
    'cami',
    51.64987905,
    0.0015564,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The London Mosque',
    'cami',
    51.45115929999999,
    -0.20737946000000002,
    'Gressenhall Road, London, SW18 5QL',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sunderland Jami-Masjid',
    'cami',
    54.9026104,
    -1.39754172,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Zakariya',
    'cami',
    53.667307466666664,
    -1.4781360444444445,
    'Wakefield, WF1 5BN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    53.66870987142857,
    -1.4794406999999998,
    'St. Catherine Street, Wakefield, WF1 5BP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Poplar Shahjalal Mosque',
    'cami',
    51.50948167692308,
    -0.017421884615384617,
    'Hale Street, London, E14 0BF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Azhar Mosque',
    'cami',
    54.99022608461538,
    -1.4399616384615386,
    'South Shields',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ma''mur Jame-E- Masjid and Islamic Center',
    'cami',
    55.00128636666667,
    -1.4289992444444444,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Anwaar e Madinah',
    'cami',
    54.905869016666664,
    -1.40123585,
    'St Mark''s Road North, Sunderland, SR4 7EG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame Masjid & Madrassa Salafia',
    'cami',
    53.9591987,
    -2.03170646,
    'Midland Street, Skipton, BD23 1SE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Poplar Mosque & Community Centre',
    'cami',
    51.510958128571424,
    -0.009756257142857144,
    'Webber Path, London, E14 0FZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Whitley Bay Islamic Cultural Centre and Masjid',
    'cami',
    55.035789336363635,
    -1.454146209090909,
    'Hillheads Road, Whitley Bay, NE25 8HR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame',
    'cami',
    52.636986647499995,
    -1.10547621,
    'Asfordby Street, Leicester, LE5 3QJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    52.627954554545454,
    -1.152725590909091,
    'Barclay Street, Leicester, LE3 0JD',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Furqan',
    'cami',
    52.63145677333333,
    -1.1061550266666667,
    'East Park Road, Leicester, LE5 5AY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Aisha',
    'cami',
    52.6309451625,
    -1.1096756625,
    'Cork Street, Leicester, LE5 5AN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tabuk & Evington Muslim Centre',
    'cami',
    52.62287478181818,
    -1.102929390909091,
    'Stoughton Drive North, Leicester, LE5 5UD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid an Noor',
    'cami',
    52.63420776363637,
    -1.1101671,
    'Berners Street, Leicester, LE2 0FS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Education Trust Cumbernauld',
    'cami',
    55.958759371999996,
    -4.012062932,
    'Craighalbert Way, Cumbernauld, G68 0LS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shair-e-Rabbani Mosque',
    'cami',
    53.44737142857143,
    -2.262905557142857,
    'Bedford Avenue, M16 8JS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid al Falah & Islamic Educational Trust',
    'cami',
    52.63522392,
    -1.11502276,
    'Keythorpe Street, Leicester, LE2 0AL',
    'sunni',
    true,
    true,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tajdaar e Madina',
    'cami',
    52.635998083333334,
    -1.1169511833333334,
    'Garendon Street, Leicester, LE2 0AH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Usman',
    'cami',
    52.63687321428572,
    -1.1133526999999999,
    'Nedham Street, Leicester, LE2 0HB',
    'Tabligh Jamati''s',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leicester Central Mosque',
    'cami',
    52.63221736086957,
    -1.121532347826087,
    'Conduit Street, Leicester, LE2 0JN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid & Community Centre',
    'cami',
    53.44606331153846,
    -2.1903689115384615,
    'Barlow Road, Manchester, M19 3DJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Islam Centre',
    'cami',
    51.579672175,
    -0.00491635,
    'Lea Bridge Road, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abdullah Quilliam Mosque',
    'cami',
    53.41427860714286,
    -2.96047025,
    'Brougham Terrace, Liverpool',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    54.98007411428572,
    -1.6488402142857144,
    'Wingrove Gardens, Newcastle upon Tyne, NE4 9HS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Falkirk Central Mosque',
    'cami',
    55.997965439999994,
    -3.78078246,
    'Burnhead Lane, Falkirk, FK1 1UG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ar-Rahman',
    'cami',
    52.63222327999999,
    -1.11651262,
    'Guthlaxton Street, Leicester, LE2 0UX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ata',
    'cami',
    54.992583960000005,
    -1.53979038,
    'North Road, Wallsend, NE28 8LF',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Heaton Mosque & Islamic Centre',
    'cami',
    54.9858098625,
    -1.5816584875,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aziziye Mosque and Community Centre',
    'cami',
    51.55535175999999,
    -0.07514958000000001,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid An Noor',
    'cami',
    52.64118096666667,
    -1.1303500499999999,
    'Belgrave Gate, Leicester, LE1 3XL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Ummah Mosque',
    'cami',
    51.51243308333333,
    -0.058192716666666665,
    'Bigland Street, London, E1 2ND',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Livingston Masjid & Islamic Centre',
    'cami',
    55.901315044444445,
    -3.5676034333333337,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newcasyle Central Mosque',
    'cami',
    54.973552440000006,
    -1.647324776,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madni Jamia Masjid',
    'cami',
    53.79596532000001,
    -1.7184947000000002,
    'Thornbury Road, Bradford, BD3 8SA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zeenat Masjid',
    'cami',
    52.419210174999996,
    -1.4980328666666667,
    'Stoney Stanton Road, Coventry',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Islamic Brotherhood Pakistan And Kashmir Family Centre',
    'cami',
    52.41692184285714,
    -1.5019209714285715,
    'Eagle Street East, Coventry',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Manchester Islamic Centre & Didsbury Mosque',
    'cami',
    53.42282277777778,
    -2.246657566666667,
    'Burton Road, Manchester, M20 2WA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Prayer Rooms',
    'cami',
    54.76581527142857,
    -1.5758597142857143,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'City Mosque Preston',
    'cami',
    53.763169875,
    -2.6985031,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zakariya Masjid',
    'cami',
    51.900837655555556,
    -0.4936667888888889,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Ali',
    'cami',
    51.8930334,
    -0.44914190000000004,
    'Beechwood Road, Luton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Al-Alkbaria',
    'cami',
    51.89588144,
    -0.44533454,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Luton Central Mosque',
    'cami',
    51.88732532,
    -0.43193038,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Jame Masjid',
    'cami',
    51.8873374,
    -0.42996651999999996,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zakariyya Jaam''e Masjid',
    'cami',
    53.56857381428571,
    -2.441734914285714,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Lateef Mosque',
    'cami',
    53.42465465555556,
    -2.9554322555555554,
    'Breck Road, Liverpool, L5 6PU',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Rahman Mosque',
    'cami',
    53.56581681428572,
    -2.447268742857143,
    'Randal Street, Bolton, BL3 4AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Camberley Mosque',
    'cami',
    51.33739769677419,
    -0.7569054709677419,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ghousia Mosque',
    'cami',
    53.874385877777776,
    -1.909111377777778,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Sadiq',
    'cami',
    53.3149171,
    -3.498127727272727,
    'Warren Road, Rhyl, LL18 1DP',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Burdett Estate Mosque',
    'cami',
    51.517075971428575,
    -0.02650747142857143,
    'Masjid Lane, London, E14 7UD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Noorul Islam',
    'cami',
    53.71019662,
    -1.64071378,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Noor',
    'cami',
    53.71015812,
    -1.6421513600000002,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Hilal',
    'cami',
    53.701483800000005,
    -1.63506478,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cemetery Lodge Prayer Room',
    'cami',
    53.809329133333335,
    -1.5563582555555557,
    NULL,
    'Leeds University Union Islamic Society',
    true,
    false,
    false,
    false,
    false,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cardigan Islamic Centre',
    'cami',
    52.081805880000005,
    -4.663120279999999,
    'Quay Street, Cardigan / Aberteifi, SA43 1HR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Yaqeen',
    'cami',
    51.24192644,
    -0.17046568,
    'Warwick Road, Redhill, RH1 1BU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Clarkston Community Centre',
    'cami',
    55.79500881521739,
    -4.272699236956521,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Belfast Islamic Centre',
    'cami',
    54.5824099,
    -5.9420848714285714,
    'Wellington Park, Belfast, BT9 6DN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cheadle Masjid',
    'cami',
    53.359339250000005,
    -2.2195474666666666,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Noorul Islam',
    'cami',
    53.58973776923077,
    -2.4314862461538462,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Masjid',
    'cami',
    53.59115023888889,
    -2.4433950111111113,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sughra Mosque',
    'cami',
    53.55486338000001,
    -2.40120726,
    'Granville Street, Bolton, BL4 7LD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'ShahJalaal Islamic Centre',
    'cami',
    51.45733832,
    -0.9843675,
    'Stanley Street, Reading',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Masjid',
    'cami',
    53.620919130000004,
    -2.14530452,
    'Bulwer Street, Rochdale, OL16 2EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Madina Masjid',
    'cami',
    53.583043205,
    -2.44525719,
    'Gower Street, Bolton, BL1 4BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Jamia Darul Quran',
    'cami',
    53.56586007,
    -2.4406060700000003,
    'Bridgeman Street, Bolton, BL3 6TH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makkah Masjid',
    'cami',
    53.56610149090909,
    -2.4286271090909093,
    'Grecian Crescent, Bolton, BL3 6QU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz e Ahlebait',
    'cami',
    53.5682159,
    -2.4292711933333333,
    'Fletcher Street, Bolton, BL3 6NG',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Falah',
    'cami',
    53.57402545714285,
    -2.4417831142857147,
    'Salisbury Street, Bolton, BL3 5DR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ilford Central Mosque',
    'cami',
    51.55632052,
    0.07483880000000001,
    'Albert Road, Ilford, IG1 1HW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Usman',
    'cami',
    53.593946,
    -2.43612638,
    'Astley Street, Bolton, BL1 8EY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Portsmouth Muslim Academy',
    'cami',
    50.80680062857143,
    -1.0873962714285714,
    'Old Commercial Road, Portsmouth',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Huda',
    'cami',
    53.755663722222224,
    -2.6976391555555552,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Alavia Bolton',
    'cami',
    53.575060169230774,
    -2.4161319769230767,
    'Bromwich Street, Bolton, BL2 1JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taiyabah Masjid',
    'cami',
    53.59210214761905,
    -2.4313907761904763,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinatul-Uloom Al-Islamiyah',
    'cami',
    52.36273631111111,
    -2.212925511111111,
    'Wyre Forest, DY10 4BH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tawhid',
    'cami',
    51.55311905263158,
    -0.004659531578947368,
    'High Road Leyton, London, E15 2BP',
    'Masjid and Madrasah al-Tawhid Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Baseera Bristol Centre',
    'cami',
    51.45918408888889,
    -2.5798435444444445,
    'Wade Street, Bristol, BS2 9DR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Aqsa',
    'cami',
    53.57580165,
    -2.451336075,
    'Gilnow Road, Bolton, BL1 4LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leicester Mosque',
    'cami',
    52.629308,
    -1.1126088666666665,
    'Sutherland Street, Leicester, LE2 1DS',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Usmani',
    'cami',
    52.6339102,
    -1.09912431,
    'Saint Saviour''s Road, Leicester, LE5 4HJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-Al-Husayn Mosque',
    'cami',
    52.640928884615384,
    -1.0997836461538462,
    NULL,
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid-e-Bilal',
    'cami',
    52.62674346428571,
    -1.1018110285714287,
    'Evington Valley Road, Leicester, LE5 5LJ',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ismaili Jamaat Khana',
    'cami',
    52.65912831111111,
    -1.0780511,
    'Waterside Road, Leicester, LE5 1TL',
    'shia',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid al Ameen',
    'cami',
    52.59971411428571,
    -1.0845829285714286,
    'Sandhurst Street, Oadby, LE2 5AR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid at-Taqwa Islamic Education Centre',
    'cami',
    52.641863111111114,
    -1.105401888888889,
    'Harewood Street, Leicester, LE5 3LX',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taybah Islamic Centre',
    'cami',
    52.63174247142857,
    -1.0945353714285715,
    'Saint Saviour''s Road, Leicester, LE5 4HJ',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hafsah Islamic Centre',
    'cami',
    52.63838081111111,
    -1.1057004666666668,
    'Sylvan Avenue, Leicester, LE5 3SN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Baitul Mukaram',
    'cami',
    52.62871354285715,
    -1.1135850428571428,
    'St Stephens Road, Leicester, LE2 1DQ',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrasa-e-Anjuman-e-Ghousia Mosque',
    'cami',
    52.6304023,
    -1.1173459333333333,
    'Evington Street, Leicester, LE2 0SA',
    'sufi',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Majid-e-Hamza Mosque',
    'cami',
    53.71760326,
    -2.09478976,
    'Eagle Street, Todmorden',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressah-e-Rahimiyah',
    'cami',
    52.63499202857143,
    -1.1094597714285714,
    'Mere Road, Leicester, LE5 5GQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Sufiya',
    'cami',
    52.628963,
    -1.1182818714285714,
    'Highfield Street, Leicester, LE2 1AD',
    'sufi',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Peace Centre',
    'cami',
    52.6381991875,
    -1.0567796624999999,
    'Thurncourt Road, Leicester, LE5 2NG',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Majles-e-Dawat Ul Haq',
    'cami',
    52.630105300000004,
    -1.11079866,
    'Earl Howe Street, Leicester, LE2 0DQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Es Salam',
    'cami',
    52.6282098,
    -1.11697356,
    'Upper Tichborne Street, Leicester, LE2 1GL',
    'sunni',
    true,
    true,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Bayaan Arabic Foundation',
    'cami',
    52.65521194,
    -1.1255567499999999,
    'Ross Walk, Leicester, LE4 5HH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Mu''adh ibn Jabal',
    'cami',
    52.63299702941177,
    -1.0720299411764707,
    'Gamel Road, Leicester, LE5 6TB',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Markfield Mosque',
    'cami',
    52.677462649999995,
    -1.2725018,
    'Ratby Lane, Coalville, LE67 9SY',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hamidiye Camii',
    'cami',
    52.63591673333334,
    -1.1409478666666666,
    'Great Central Street, Leicester, LE1 4JT',
    'sufi',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ibn Uthaymeen',
    'cami',
    52.63902448571429,
    -1.1212483285714285,
    'Madras Road, Leicester, LE1 2LT',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noor ul Islam',
    'cami',
    52.6316757,
    -1.09935722,
    'Linden Street, Leicester, LE5 5EE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'UKIM - Leicester Islamic Centre',
    'cami',
    52.63145668888889,
    -1.1043003666666666,
    'Gwendolen Road, Leicester, LE5 5FL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darus Salam Mosque',
    'cami',
    52.62713752,
    -1.1052875800000002,
    'Kedleston Road, Leicester, LE5 5HW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anjuman-e-Saifee',
    'cami',
    52.60435238,
    -1.1129739600000002,
    'Overdale Road, Leicester, LE2 3YH',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Salaam',
    'cami',
    53.603278360000004,
    -2.43352438,
    'Ramsay Street, Bolton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Masjid Rizvia',
    'cami',
    52.79695053448276,
    -1.6436691896551725,
    'Uxbridge Street, Burton-on-Trent, DE14 3LA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Birr Community Centre and Mosque',
    'cami',
    51.387819179999994,
    1.38323448,
    'Union Crescent, Margate, CT9 1NR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame Masjid',
    'cami',
    53.703120000000006,
    -1.6309987076923076,
    'Henry Street, Batley, WF17 6JJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jumma Masjid',
    'cami',
    53.701263600000004,
    -1.6305897999999999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Abbassiya',
    'cami',
    53.80127376,
    -1.71843364,
    'Moor Park Drive, Bradford, BD3 7ER',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ilaahi Masjid',
    'cami',
    53.6981447,
    -1.6380049800000003,
    'Hope Street, Dewsbury, WF13 2BT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zaouia islamiya ''alaouia',
    'cami',
    52.45897873,
    -1.90105319,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mawlawi Kurdish Cultural Centre',
    'cami',
    53.46088673636363,
    -2.2518884,
    'Parsonage Street, Manchester, M15 5WD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khidmah Academy',
    'cami',
    51.54084412857143,
    0.010733328571428571,
    'Vicarage Lane, London, E15 4HG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Salaam Community Centre and Masjid',
    'cami',
    53.45770245999999,
    -2.2517623,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque Al-Noor',
    'cami',
    52.977621199999994,
    -0.030210057142857145,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stornoway Masjid',
    'cami',
    58.2079325,
    -6.384048766666667,
    'Sràid Sheumais, Stornoway, HS1 2QS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'South Essex Islamic Community Centre',
    'cami',
    51.5604077,
    0.48723962,
    'High Road, Basildon, SS16 4ND',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hazrat Bilal Centre',
    'cami',
    51.469040629999995,
    -2.57764646,
    'Sevier Street, Bristol, BS2 9QX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mid Sussex Islamic Centre And Masjid',
    'cami',
    50.9917303,
    -0.09966912,
    'Wivelsfield Road, Haywards Heath, RH16 4EF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ghousia',
    'cami',
    52.585471633333334,
    -0.2514640166666667,
    'Gladstone Street, Peterborough, PE1 2BY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jesus Son of Mary Community Centre',
    'cami',
    51.64411376,
    -0.36105646,
    'High Street, Bushey, WD23 3DH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Khadijah and Islamic Centre',
    'cami',
    52.58345455714285,
    -0.24808027142857142,
    'Cromwell Road, Peterborough, PE1 2HP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Husaini Islamic Centre',
    'cami',
    52.57541677857143,
    -0.22814405000000001,
    'Burton Street, Peterborough, PE1 5HD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sheffield Grand Mosque',
    'cami',
    53.404612515,
    -1.441033665,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-E-Madinah',
    'cami',
    51.47685855,
    -2.5383623833333333,
    'Fishponds Road, Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakar',
    'cami',
    51.45293125,
    0.17724725833333332,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahporan',
    'cami',
    51.49515286,
    -2.57426132,
    'Filton Avenue, Bristol, BS7 0BE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Felicity House',
    'cami',
    53.400963928571436,
    -2.922626814285714,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Raheem',
    'cami',
    52.57774151428571,
    -0.24727072857142857,
    'Cromwell Road, Peterborough, PE1 2EA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lansbury Mosque',
    'cami',
    51.51522946666667,
    -0.018195666666666666,
    'Alton Street, London, E14 6BZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Mahdi Centre',
    'cami',
    50.87632045238096,
    -1.2177102095238095,
    'Fontley Road, Fareham, PO15 6QR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Jamia Masjid',
    'cami',
    53.817063950000005,
    -1.5200624777777778,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dunfermline Islamic Centre',
    'cami',
    56.0699684,
    -3.435664042857143,
    'Woodmill Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Handsworth Mosque & IslamicCentre',
    'cami',
    52.503991459999995,
    -1.9441574199999998,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ahmadiyya Muslim Community Centre',
    'cami',
    53.60163328,
    -2.5493695533333334,
    'Jones Street, Bolton, BL6 7AJ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dudley Central Mosque',
    'cami',
    52.5123613,
    -2.0787744785714284,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cambridge Central Mosque',
    'cami',
    52.19731635277778,
    0.15240035555555556,
    'Mill Road, Cambridge, CB1 3DF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chingford Islamic and Cultural Centre',
    'cami',
    51.6110424,
    -0.017674466666666666,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lea Bridge Road Mosque',
    'cami',
    51.57186706666667,
    -0.021482655555555553,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Birr',
    'cami',
    51.563356911111114,
    -0.017128344444444443,
    'Church Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leyton Jamia Masjid',
    'cami',
    51.56115281111111,
    -0.0097379,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Ul-Isra',
    'cami',
    51.489593533333334,
    -3.175377372222222,
    'Wyeverne Road, Cardiff, CF24 4BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid At-Tawheed',
    'cami',
    51.470293142857145,
    -3.1854635142857144,
    'Penarth Road, Cardiff',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abubakr',
    'cami',
    51.4684561625,
    -3.181817975,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Mosque',
    'cami',
    51.49595162000001,
    -3.17576636,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Association of Salisbury',
    'cami',
    51.07249037142857,
    -1.8063763,
    'Wilton Road, Salisbury, SP2 7ED',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Farooq-e-Azam Mosque & Islamic Centre',
    'cami',
    54.55969958846154,
    -1.3184663884615384,
    'Bowesfield Lane, Stockton-on-Tees, TS18 3EB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Masjid Al-Haramain',
    'cami',
    53.71096684444444,
    -1.6744587777777777,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Mosque',
    'cami',
    51.493121386206894,
    -3.173640503448276,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Menzil Trust Masjid',
    'cami',
    51.56615612,
    -0.00986196,
    'High Road Leyton, London, E10 6RL',
    'The Menzil Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cann Hall Masjid',
    'cami',
    51.555110745,
    0.01129297,
    'Cann Hall Road, London, E11 3NJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qur''an Academy',
    'cami',
    51.47326317777778,
    -2.5309264000000002,
    'Abingdon Road, Bristol, BS16 3NY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mukarram Jame Masjid',
    'cami',
    53.365561750000005,
    -1.4734763833333335,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Muhammed',
    'cami',
    52.663942680000005,
    -1.0895363200000001,
    'Claymill Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aberdeen Mosque & Islamic Centre',
    'cami',
    57.150366590476196,
    -2.0916784904761903,
    'Frederick Street, Aberdeen, AB24 5HY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid E Ghosia',
    'cami',
    53.5651029,
    -2.4438295400000003,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Uthman',
    'cami',
    51.39797537142857,
    -0.0732112,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza-E-Mustafa Mosque',
    'cami',
    53.41532787647059,
    -1.3246782470588234,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrasatul Imam Muhammad Zakariya',
    'cami',
    53.59294943333333,
    -2.4291640833333332,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ashton Central Mosque',
    'cami',
    53.492519538461536,
    -2.0867245692307694,
    'Hillgate Street, OL6 9JA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Khalil',
    'cami',
    51.52296381666667,
    -0.19406385,
    'Sutherland Avenue',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Haleem Mosque',
    'cami',
    53.86402331428571,
    -1.9063278571428572,
    'Longcroft, Keighley, BD21 5AL',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Reading Islamic Centre Hanfi Maslic',
    'cami',
    51.453718779999996,
    -0.9479886499999999,
    'Amity Road, Reading',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ashrafia Mosque',
    'cami',
    53.57395221666667,
    -2.4433040166666666,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dawat E Islami Shaftesbury',
    'cami',
    51.59417477142857,
    -2.9961327142857144,
    'Shaftesbury Street, Newport, NP20 5FA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjide Moorul',
    'cami',
    53.74432756666667,
    -2.4670423777777777,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinah Masjid',
    'cami',
    53.58150185,
    -2.43493645,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Nimra',
    'cami',
    53.84087876153846,
    -2.206534253846154,
    'BankHouse Road, Nelson',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darus Salam Masjid & Bangladeshi Islamic Centre',
    'cami',
    52.569676528571435,
    -2.0210933285714288,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gausia Madrassah',
    'cami',
    53.83739176,
    -2.20570986,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dundee Central Mosque',
    'cami',
    56.461807915942025,
    -2.9808398739130433,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Labbayak Ya RasoolAllah Masjid',
    'cami',
    53.83250358,
    -2.2089307600000003,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ahl Al-Sunnah',
    'cami',
    53.59376074444444,
    -2.4425614555555555,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'madinah Community Centre',
    'cami',
    52.5364802,
    -1.3775433,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Quba Education Centre',
    'cami',
    53.39427386666667,
    -1.4269892833333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bait-Ur-Rahman Mosque',
    'cami',
    55.86602780526316,
    -4.289925905263158,
    'Haugh Road, Glasgow, G3 8TR',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina masjid',
    'cami',
    53.709448180952386,
    -1.6365433523809523,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressa Islamiyah',
    'cami',
    53.71012225172414,
    -1.6362323931034484,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Anwara al Madina',
    'cami',
    52.4931165,
    -1.828285209090909,
    'Washwood Heath Road, Birmingham, B8 2JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tayyabah',
    'cami',
    52.493109933333336,
    -1.8271214,
    'Washwood Heath Road, Birmingham, B8 2JG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tooba',
    'cami',
    53.52885622,
    -2.64567202,
    'Clifton Street, Wigan, WN3 5HN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Ghausia Masjid',
    'cami',
    53.83904242,
    -2.2159150199999997,
    'Pendle Street, Nelson',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East Renfrewshire Islamic Centre',
    'cami',
    55.76972946666667,
    -4.336591777777778,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Universal Association',
    'cami',
    51.50897077916667,
    -0.21193018333333333,
    'Penzance Place',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Turners Road Masjid',
    'cami',
    51.51663901818181,
    -0.031615227272727274,
    'Bangla Close, London, E3 4YD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    53.80049884,
    -1.82249652,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mansfield Jamee Masjid',
    'cami',
    53.144255416666674,
    -1.1891532333333332,
    'Goodacre Street, Mansfield, NG18 2HJ',
    'Mansfield & Ashfield Bangladeshi Association',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Falah Community Centre',
    'cami',
    51.9029721,
    -0.46260871666666664,
    'Compton Avenue, Luton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Maktoum Mosque',
    'cami',
    56.4595425,
    -2.98643694,
    'Wilkie''s Lane, Dundee, DD1 5HB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    51.48143076,
    -0.6340201000000001,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tantallon Road Mosque',
    'cami',
    55.82563976666667,
    -4.2826798888888895,
    'Tantallon Road, Glasgow',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Valide Sultan Mosque',
    'cami',
    51.557271316666665,
    -0.08388829166666667,
    'Clissold Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lewisham Islamic Centre',
    'cami',
    51.451846305000004,
    -0.016290665,
    'Lewisham High Street, London, SE13 6NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    51.581137266666666,
    -2.9917446222222224,
    'Commercial Road, Newport, NP20 2PP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wrexham Islamic Cultural Centre',
    'cami',
    53.04811047777778,
    -2.9972250333333332,
    'Grosvenor Road, Wrexham',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dagenham Aishah Islamic Centre',
    'cami',
    51.56735568333334,
    0.14367431666666666,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Tauhid Mosque',
    'cami',
    53.662434340000004,
    -1.7855652,
    'Spaines Road, Huddersfield, HD2 2QA',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Minhaj Ul Quran Centre',
    'cami',
    51.54615991666667,
    0.024817033333333335,
    'Romford Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Welfare House',
    'cami',
    53.37943514444444,
    -1.4965227333333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bethel Chapel',
    'cami',
    51.62048885714286,
    -3.9901369,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hyderi Islamic Centre',
    'cami',
    51.42014494,
    -0.13654348,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Ali Reza Islamic Centre',
    'cami',
    51.738147000000005,
    0.4767169,
    'Regina Road, Chelmsford',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Aqsa Walsall Masjid',
    'cami',
    52.59297071428572,
    -1.985100657142857,
    'Stafford Street, Walsall, WS2 8EA',
    'Karimia Association Limited',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Warrington Islamic Association',
    'cami',
    53.39777184705882,
    -2.6127605764705883,
    'Lockton Lane, Warrington, WA5 0BF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Community Mosque',
    'cami',
    50.9572662,
    -0.13805706,
    'Lower Church Road, Burgess Hill, RH15 9AB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre of Plymouth and Cornwall',
    'cami',
    50.37701365833334,
    -4.141172683333333,
    'North Road East, Plymouth, PL4 6AW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oldham Central Masjid and Islamic Centre',
    'cami',
    53.545049004999996,
    -2.1279710950000004,
    'Featherstall Road North, Oldham, OL9 6BX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Syed Shah Mustafa Jame Masjid',
    'cami',
    57.1431958875,
    -2.100930425,
    'Crown Terrace, Aberdeen, AB11 6HD',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Alhikmah & Community Centre',
    'cami',
    57.1540924,
    -2.097520557142857,
    'Nelson Street, Aberdeen, AB24 5ER',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Anwar-Ul-Uloom',
    'cami',
    52.48978521111111,
    -1.9581581222222222,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shepherds Bush Mosque and Muslim Cultural Centre',
    'cami',
    51.506594725,
    -0.23135691875,
    'Uxbridge Road, London, W12 7LJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamiat Ahl-alHadith',
    'cami',
    51.453887075,
    -0.94933485,
    'Cumberland Road, Reading, RG1 3LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Watford Jamia Masjid',
    'cami',
    51.652481275,
    -0.395098725,
    'Cambridge Rd, Watford, WD18 0GJ',
    'http://www.watfordmosque.org.uk',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Mosque and Islamic Centre',
    'cami',
    53.451095845714285,
    -2.2261104,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Mushkil Kusha',
    'cami',
    51.901408133333334,
    -0.4671814222222222,
    'High Street, Luton, LU4 9JZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madni Mosque',
    'cami',
    51.495815,
    -3.1717662,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Mosque',
    'cami',
    51.552286716666664,
    0.05286178333333333,
    'Romford Road, London, E12 6BT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Madinah',
    'cami',
    51.495012242857136,
    -0.5418336857142857,
    'Cheviot Road, Slough, SL3 8LA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid us Sunnah',
    'cami',
    51.47830628333333,
    -0.40698296666666667,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hockwell Ring Masjid',
    'cami',
    51.90606077142858,
    -0.4688497857142857,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taunton and Somerset Islamic Centre',
    'cami',
    51.014733742105264,
    -3.107120605263158,
    'Tower Lane, Taunton, TA1 4AR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Mustafa',
    'cami',
    53.8356389,
    -2.2067173714285713,
    'Smith Street, Nelson, BB9 9QX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muhammadi Masjid',
    'cami',
    53.836472988888886,
    -2.2077186,
    'Netherfield Road, Nelson, BB9 9QL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Huda - Cultural Centre and Mosque',
    'cami',
    51.521116400000004,
    -0.0512772875,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjidul Falah',
    'cami',
    51.9046797125,
    -2.0834607875,
    'High Street, Cheltenham, GL50 3JA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Rabbaniah Islamic Cultural Centre',
    'cami',
    51.474770709999994,
    -3.18691778,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Worthing Masjid',
    'cami',
    50.819296400000006,
    -0.3700379833333333,
    'Ivy Arch Road, Worthing, BN14 8BX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre Aberdare',
    'cami',
    51.72119228181818,
    -3.4475794000000004,
    'Phillip Street',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Bilal',
    'cami',
    56.470237087499996,
    -2.9610788125,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tahir Mosque',
    'cami',
    51.43388626000001,
    0.009892960000000001,
    'Verdant Lane, London, SE6 1TP',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Muslim community Centre & Mosque',
    'cami',
    51.54423155,
    0.031911153846153846,
    'Green Street, London, E7 8JG',
    'Newham North Islamic Association',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressa Taleem-ul-Quran and Qurtaba Masjid',
    'cami',
    53.5416186375,
    -2.0912104125,
    'Lees Road, Oldham, OL4 1LS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Neeli Mosque',
    'cami',
    53.60866128333333,
    -2.152443883333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East End Islamic Centre',
    'cami',
    51.537277805555554,
    0.029421772222222222,
    'Plashet Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East End Islamic Centre (Maktab Building)',
    'cami',
    51.53734314545454,
    0.029715763636363635,
    'Lucas Avenue',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mubarak Mosque',
    'cami',
    51.19075177777778,
    -0.7510230851851851,
    'Sheephatch Lane, Tilford, GU10 2AQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Masjid',
    'cami',
    53.45033108,
    -2.2016367600000004,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Masjid',
    'cami',
    53.45055416764706,
    -2.201677841176471,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newbury Park Masjid',
    'cami',
    51.58131328461539,
    0.09139202692307692,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imamia Mission',
    'cami',
    51.57815016363636,
    0.08800791818181818,
    'Perrymans Farm Road, Ilford, IG2 7LX',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Adur Muslim Centre',
    'cami',
    50.83324685,
    -0.27253825000000004,
    'Brunswick Road, Shoreham-by-Sea',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shrewsbury Muslim Centre',
    'cami',
    52.70414998666667,
    -2.7311069333333333,
    'Preston Street, Shrewsbury',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hounslow Muslim Centre',
    'cami',
    51.46947718,
    -0.35707644,
    'Hanworth Road, Hounslow, TW3 1UA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Eastbourne Mosque',
    'cami',
    50.77265822857142,
    0.28677774285714286,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Huda Islamic Centre',
    'cami',
    53.375422625,
    -1.4832969375,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Mosque',
    'cami',
    53.09393871428572,
    -2.4431166714285717,
    'Electricity Street, Crewe, CW2 7EW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Brixton Mosque',
    'cami',
    51.46534396470588,
    -0.11270597058823528,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gillani Noor Masjid',
    'cami',
    52.980588233333336,
    -2.1214306222222223,
    'Chaplin Road, Stoke-on-Trent, ST3 4QS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Idara-e-Jaaferiya',
    'cami',
    51.42511952352942,
    -0.16151102352941177,
    'Church Lane, London, SW17 9PP',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Acton Mosque',
    'cami',
    51.50665790666667,
    -0.27029428,
    'Oldham Terrace, London, W3 6LS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Room',
    'cami',
    52.20107586666666,
    0.11024475,
    'Cambridge, CB3 9DA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Alhidaya Croydon',
    'cami',
    51.393433433333335,
    -0.11312446666666667,
    'Brigstock Road, Thornton Heath, CR7 7JP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Rasheed',
    'cami',
    53.74419735,
    -2.504451425,
    'Pleasington Street, Blackburn, BB2 1UF',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia-Tul-Muntazir Manchester',
    'cami',
    53.498724307692314,
    -2.2422061615384616,
    'Sherborne Street, Manchester, M8 8ND',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamea Masjid',
    'cami',
    53.7551831875,
    -2.691881175,
    'Clarendon Street, Preston, PR1 3YN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Greenwich Islamic Centre',
    'cami',
    51.490389199999996,
    0.08269906923076922,
    'Plumstead Road, London, SE18 7DW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Plaistow Jamia Islamia',
    'cami',
    51.52811982352941,
    0.023776835294117647,
    'Balaam Street',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Hamd',
    'cami',
    53.792479353846154,
    -1.7292136384615384,
    'Leeds Road, Bradford, BD3 9LY',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Afiyat Mosque',
    'cami',
    53.387693379999995,
    -1.45099296,
    'Sussex Street, Sheffield, S4 7YQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Atta Mosque',
    'cami',
    53.70582242222222,
    -1.6534782444444445,
    'Garnett Street, Dewsbury, WF13 4AT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Aman Mosque',
    'cami',
    51.52336167272727,
    -0.4660622636363636,
    'Royal Lane, Uxbridge, UB8 3QU',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ikram Mosque',
    'cami',
    52.614522720000004,
    -1.1193279,
    'Avenue Road Extension, Leicester, LE2 3EQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ehsan',
    'cami',
    51.39107505416666,
    -0.16512584583333334,
    'Willow Lane, Mitcham, CR4 4TS',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ehsan Mosque',
    'cami',
    52.28860206,
    -1.54123358,
    'Riverside, Leamington Spa, CV32 5AH',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Wahid Mosque',
    'cami',
    51.43069458947368,
    -0.4028501315789474,
    'Raleigh Way, Feltham, TW13 7NX',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ahad Mosque',
    'cami',
    51.53390870526316,
    0.039057247368421054,
    'Tudor Road, London, E6 1DR',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oxford Mosque Society',
    'cami',
    51.7515464,
    -1.2403754375,
    'Bath Street, Oxford, OX4 1AY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Swindon Ismaili Jamatkhana',
    'cami',
    51.555427380000005,
    -1.78457072,
    'Savernake Street, Swindon, SN1 3LZ',
    'ismaili',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Habib',
    'cami',
    51.52032852,
    0.01785468,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-al-Falah',
    'cami',
    51.5251267375,
    0.028387025,
    'Barking Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Iqra Academy',
    'cami',
    51.523658942857146,
    0.02168727142857143,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghausia',
    'cami',
    53.40819933809524,
    -1.4496835619047619,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ibrahim',
    'cami',
    51.53025486521739,
    0.03613193913043478,
    'Barking Road, London, E13 9EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Palmers Green Mosque',
    'cami',
    51.61521242,
    -0.10461126999999999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Noor-E-Islam',
    'cami',
    53.53440512857143,
    -2.1321720714285712,
    'Manchester Road, Oldham, OL9 7AP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Werneth Jamia Mosque',
    'cami',
    53.53268975714286,
    -2.1331053142857144,
    'Manchester Road, Oldham, OL9 7AX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Owais-e-Qarni',
    'cami',
    51.56527895,
    0.05609862499999999,
    'Belgrave Road, Ilford',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Ummah Goresbrook',
    'cami',
    51.53426338823529,
    0.11348948823529412,
    'Maplestead Road, Dagenham',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Haverhill Mosque',
    'cami',
    52.08229088,
    0.43159448000000006,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Newham',
    'cami',
    51.54165607857143,
    0.050880878571428576,
    'High Street North',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Quds Mosque',
    'cami',
    50.83441246666667,
    -0.15053051111111113,
    'Dyke Road',
    'Brighton Mosque & Muslim Community Centre',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Telford Central Mosque',
    'cami',
    52.69939729090909,
    -2.511365409090909,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Masjid al-Nur',
    'cami',
    53.447823647058826,
    -2.1925509705882353,
    'Belvoir Avenue, M19 3AP',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Raza Foundation',
    'cami',
    53.44866833333334,
    -2.1930180000000004,
    'Park Grove, Manchester, M19 3AQ',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Broughty Ferry Mosque',
    'cami',
    56.471563700000004,
    -2.9040838363636365,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hendon Jami Masjid',
    'cami',
    54.902110459999996,
    -1.3768734,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mahmood Mosque',
    'cami',
    56.47249849999999,
    -2.9689462200000003,
    'Dens Road, Dundee, DD3 7HY',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Heathrow Jamia Masjid',
    'cami',
    51.48116295,
    -0.41547631999999995,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Integration Community Centre',
    'cami',
    51.46274087142857,
    -0.3896908,
    'Staines Road, Hounslow, TW4 5DP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    51.50951591111111,
    -0.47436498888888884,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Falah Islamic Education Centre',
    'cami',
    51.5127593375,
    -0.4754810625,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Uxbridge Muslim Community Centre',
    'cami',
    51.53792628,
    -0.48393116,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Uxbridge Eyup Sultan Masjid',
    'cami',
    51.54786338333333,
    -0.48033936666666666,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ashford & Staines Community Centre',
    'cami',
    51.4470164,
    -0.45836873333333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Feltham Hira Centre',
    'cami',
    51.45397657272727,
    -0.4041995,
    'Hounslow Road, Feltham, TW14 0AX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oldham Mosque & Islamic Centre',
    'cami',
    53.542700366666665,
    -2.126292688888889,
    'Middleton Road, Oldham, OL9 6BG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Khasra Masjid',
    'cami',
    53.5460795625,
    -2.1219833375,
    'Chadderton Way, Oldham, OL9 6DP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Syeda Fatima Zahra Centre',
    'cami',
    52.587614759999994,
    -1.99163958,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Samad',
    'cami',
    53.65091651111111,
    -1.779735511111111,
    'Lower Fitzwilliam Street, Huddersfield, HD1 6AS',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bait-ul-Hadi',
    'cami',
    51.64234452000001,
    -0.41896167999999995,
    NULL,
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz Us-Sunnah',
    'cami',
    51.53908068,
    -0.29514204,
    'Sunleigh Road, Wembley, HA0 4LY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-E-Jumu''ah Masjid',
    'cami',
    51.46442258571428,
    -0.36903502857142856,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Islamic Mission',
    'cami',
    51.464807740000005,
    -0.36946952,
    'Hibernia Road, Hounslow, TW3 3RN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Grimsby Islamic Centre',
    'cami',
    53.554117425925924,
    -0.08005364814814815,
    'Weelsby Road, Grimsby, DN32 0PY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Rahman Mosque',
    'cami',
    53.3931975375,
    -1.4578517875,
    'Gower Street, Sheffield, S4 7JD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Mohammed',
    'cami',
    53.39100606666667,
    -1.4581651222222223,
    'Sorby Street, Sheffield, S4 7LJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kingston Mosque',
    'cami',
    51.41599804,
    -0.2978289,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Islamia Ghousia Masjid',
    'cami',
    53.53228984,
    -2.13564504,
    'Warwick Street, Oldham, OL9 7EB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hussainiat Al Zahra',
    'cami',
    54.57545290833334,
    -1.2426855583333334,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noorani Masjid',
    'cami',
    53.546315019999994,
    -2.12267012,
    'Chadderton Way, Oldham, OL9 6DP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Taleemul Islam Markazi Masjid',
    'cami',
    53.53255960454545,
    -2.1388522545454545,
    'Suffolk Street, Oldham, OL9 7DJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bury Park Masjid',
    'cami',
    51.88475488666666,
    -0.42612024000000004,
    'Bury Park Road, Luton',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Daarul Huda',
    'cami',
    52.124960200000004,
    -0.47145281818181817,
    'Ampthill Road, Bedford, MK42 9HP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'St Michaels Mount (inman Trust)',
    'cami',
    53.426897177777775,
    -2.731266355555556,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baital Ma''mur Jami Masjid',
    'cami',
    52.24101293333334,
    -0.9179335777777777,
    'Argyle Street, NN5 5LJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abu Bakar Masjid',
    'cami',
    53.793465811764705,
    -1.7285126588235293,
    'Steadman Terrace, Bradford, BD3 9NB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Jamia Mosque',
    'cami',
    53.54210972,
    -2.0883963,
    'Ronald Street, Oldham, OL4 1NE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    51.74212485555555,
    -1.2369024888888889,
    'Stanley Road, OX4 1QZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Peterborough Jamatkhana',
    'cami',
    52.57790618,
    -0.24568167999999999,
    'Craig Street, Peterborough',
    'ismaili',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Mosque',
    'cami',
    52.52307145517241,
    -2.0578176931034484,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Shah Jalal',
    'cami',
    52.52560897142857,
    -2.0543166476190473,
    'Wellington Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid At-Taqwa',
    'cami',
    52.64184994,
    -1.10486851,
    'Humberstone Road, Leicester, LE5 3DF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faiz e Raza',
    'cami',
    52.6417826375,
    -1.107760425,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizen E Islam',
    'cami',
    52.431098,
    -1.5035662777777778,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Shakoor',
    'cami',
    51.745066359999996,
    -1.22935102,
    'Cowley Road, Oxford, OX4 1XQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Saboor Mosque',
    'cami',
    52.806114799999996,
    -1.6069463000000002,
    'High Bank Road, Burton-on-Trent, DE15 0HU',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjie Islam Centre',
    'cami',
    52.55276656666666,
    -2.018539966666667,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wednesbury Central Mosque',
    'cami',
    52.55328327142857,
    -2.0174634333333334,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Hayat Un Nabi',
    'cami',
    53.53402211,
    -2.1278024,
    'Werneth Hall Road, Oldham, OL8 1QZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Omar Mukhtar',
    'cami',
    53.39569671666666,
    -2.9579316166666665,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Baseer',
    'cami',
    53.48492108888889,
    -1.1885369444444445,
    'Edlington Lane, Doncaster, DN12 1BS',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ross Street Masjid',
    'cami',
    53.536062353333335,
    -2.122714933333333,
    'Ross Street, Oldham, OL8 1UA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nagina Jamia Masjid',
    'cami',
    53.535669363636366,
    -2.1238352000000003,
    'Werneth Hall Road, Oldham, OL8 4BB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sandwell Grand Masjid',
    'cami',
    52.520386099999996,
    -1.9995803272727273,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Salahaddin Community Centre',
    'cami',
    52.56512464,
    -0.2494692,
    'Grove Street, Peterborough, PE2 9AG',
    'Bradost Charitable Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Masjid Gulzar-e-Habib Mosque',
    'cami',
    52.52141831428571,
    -2.0026263,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Adam',
    'cami',
    52.59693987142857,
    -1.0811704714285715,
    'Wigston Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamay Masjid Muhammadia Saifia',
    'cami',
    53.53746765555556,
    -2.1041678333333333,
    'Waterloo Street, Oldham, OL4 1EU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Jamay Masjid',
    'cami',
    53.5369816,
    -2.1030480833333334,
    'Sickle Street, Oldham, OL4 1SB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Greengate Jamia Mosque',
    'cami',
    53.539061322222224,
    -2.10188105,
    'Greengate Street, Oldham, OL4 1DH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Mosque & Islamic Centre',
    'cami',
    53.534259057142854,
    -2.1213116285714286,
    'Stuart Street, Oldham, OL8 1SD',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-Ul-Asqa and Islamic Centre',
    'cami',
    53.532507339999995,
    -2.12373432,
    'Windsor Road, Oldham, OL8 1RG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hamad Bin Khalifa Islamic Centre',
    'cami',
    51.712360493333335,
    -5.031129613333333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muhammadi Masjid',
    'cami',
    53.803365121052636,
    -1.764681842105263,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    53.81016554285714,
    -1.7764067000000001,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muhammadi Masjid',
    'cami',
    53.87323074545454,
    -1.9087488181818182,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imam Yusuf Motala Academy',
    'cami',
    53.81025627142857,
    -1.7325303,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid As-Sunnah',
    'cami',
    53.78116394375,
    -1.7838254,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Turkish Community Centre',
    'cami',
    52.197285328571425,
    -2.2191938714285713,
    'Worcester, WR1 1NQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Muslim Association',
    'cami',
    52.1913270875,
    -2.2127636625,
    'Worcester, WR5 1BW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kidderminster Madani Masjid',
    'cami',
    52.391956300000004,
    -2.2458935799999997,
    'Wyre Forest, DY10 2ES',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hastings Mosque',
    'cami',
    50.85219784545455,
    0.5574899636363636,
    'Mercatoria, TN38 0EB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tayside Islamic Centre',
    'cami',
    56.46654062,
    -2.9658558200000003,
    'Victoria Road, Dundee',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Netherton Islamic Trust Masjid',
    'cami',
    52.49550033846154,
    -2.0861418384615384,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Arbroath Islamic Community Centre',
    'cami',
    56.566858319999994,
    -2.57940682,
    'Hayshead Road, Arbroath',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid E Abdullah ibn Mas''ud',
    'cami',
    52.60395342,
    -1.13992888,
    'Hallaton Street, Leicester, LE2 8QU',
    'Saffron Community Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mohl-Ul-Islam Siddiquia',
    'cami',
    53.531593325,
    -2.1146679125,
    'Copster Hill Road, Oldham, OL8 1QB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oldham Madani Academy',
    'cami',
    53.54886704999999,
    -2.1266274666666667,
    'Maygate, Oldham, OL9 6TR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Ikhlas Centre',
    'cami',
    51.48806825625,
    -3.1547132875,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madina Islamic Educational and Cultural Centre',
    'cami',
    53.5359267,
    -2.1006976333333336,
    'Waterloo Street, Oldham, OL4 1ES',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madina Jamia Masjid',
    'cami',
    53.536113936363634,
    -2.100521781818182,
    'Waterloo Street, Oldham, OL4 1ES',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid & Islamic Centre',
    'cami',
    53.54961642399999,
    -2.1217885080000003,
    'Stansfield Street, Oldham, OL1 2HA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stevenage Muslim Community Centre and Mosque',
    'cami',
    51.915922800000004,
    -0.18168996874999999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Haramain Mosque and Education Centre',
    'cami',
    52.13032661999999,
    -0.46739901999999994,
    'Melbourne Street, Bedford, MK42 9AX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mamur Academy',
    'cami',
    51.5284940625,
    -0.0500006125,
    'Roman Road, London, E2 0QN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nusratul Islam Masjid',
    'cami',
    53.53646259166666,
    -2.0982078583333332,
    'Pitt Street, Oldham, OL4 1AL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Brentwood Mosque',
    'cami',
    51.61257121111111,
    0.29929096666666666,
    'Warley Hill, Brentwood, CM14 5HA',
    'muslim',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Maryam',
    'cami',
    54.551647460000005,
    -1.24930628,
    'Green Lane, Middlesbrough, TS5 7RX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Al-Madina',
    'cami',
    54.568290614285715,
    -1.2311452571428572,
    'Waterloo Road, Midlesbrough, TS1 3JB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Faridia',
    'cami',
    52.56826916,
    -2.12442672,
    'Wanderers Avenue, Wolverhampton, WV2 3HL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wapping Noorani Masjid & Cultural Centre',
    'cami',
    51.50617457999999,
    -0.0565859,
    'Prusom Street, London, E1W 3RR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Azmat E Islam',
    'cami',
    53.53742631,
    -2.0967451099999996,
    'Retford Street, Oldham, OL4 1BL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinatul Ilm',
    'cami',
    53.53868551111111,
    -2.096551577777778,
    'Nugget Street, Oldham, OL4 1BN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oxford Centre for Islamic Studies',
    'cami',
    51.7557231,
    -1.2365106,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Central Mosque',
    'cami',
    51.5289777,
    -0.165071,
    'London, NW8 7RG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Masjid',
    'cami',
    53.6782652,
    -1.5133069,
    'Grange Street, Wakefield, WF2 8TF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Da''wah Academy',
    'cami',
    52.6339828,
    -1.1137362,
    'Melbourne Road, Leicester, LE2 0DS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Madina',
    'cami',
    52.6403832,
    -1.1194688,
    'Malabar Road, Leicester, LE1 2LG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Khaleel',
    'cami',
    52.6312469,
    -1.1116098,
    'Donnington Street, Leicester, LE2 0DE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Furqan Islamic Da''wah Association (FIDA)',
    'cami',
    52.6264583,
    -1.1070988,
    'Rowsley Street, Leicester, LE5 5JN',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hounslow Jamia Masjid & Islamic Centre',
    'cami',
    51.45919,
    -0.374936,
    'Wellington Road South, London Borough of Hounslow, TW4 5HU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Darassalaam',
    'cami',
    52.5870503,
    -0.2436139,
    'Alma Road, Peterborough, PE1 3AW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Muqeet Mosque',
    'cami',
    52.5805403,
    -1.9828794,
    'Vicarage Place, Walsall, WS1 3NA',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'South Wales Islamic Centre',
    'cami',
    51.4680602,
    -3.1697031,
    'Alice Street, Cardiff, CF10 5LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Salaam Mosque',
    'cami',
    53.5863325,
    -0.6737709,
    'Cliff Closes Road, Scunthorpe, DN15 7HT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrasa Taleem ul Islam',
    'cami',
    55.8401276,
    -4.2784346,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinatul Uloom Al Islam Mosque',
    'cami',
    52.5152779,
    -1.9992015,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Piety',
    'cami',
    50.3735827,
    -4.1268743,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anwar-E-Madina',
    'cami',
    53.6800634,
    -1.6566832,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Tabligh Ul Islam Masjid',
    'cami',
    53.7890036,
    -1.7824979,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamie Mosque and Bangladesh Islamic Centre',
    'cami',
    51.7522699,
    -0.3212208,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Feltham Masjid',
    'cami',
    51.4430645,
    -0.4141668,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khanqah Naqshbandia',
    'cami',
    53.4329627,
    -2.2088242,
    'Mauldeth Road, M19 1BA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anjuman-e-Zinatul Islam',
    'cami',
    53.7094054,
    -1.6321036,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wimbledon Mosque',
    'cami',
    51.4364908,
    -0.1972458,
    'Durnsford Road, London, SW19 8DS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aylesbury Mosque',
    'cami',
    51.821377,
    -0.8103297,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitur Raheem Mosque',
    'cami',
    51.4794421,
    -3.2137235,
    'Sanatorium Road, Cardiff, CF11 8DG',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leytonstone Mosque',
    'cami',
    51.568253,
    0.0128357,
    'Dacre Road, London, E11 3AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Edinburgh Central Mosque',
    'cami',
    55.9450099,
    -3.1858397,
    'Potterrow, Edinburgh, EH8 9BT',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Futuh Mosque',
    'cami',
    51.3967071,
    -0.1992764,
    'London Road, Morden, SM4 5PT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre of England',
    'cami',
    51.5354273,
    -0.1889909,
    NULL,
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nottingham Islamic Centre',
    'cami',
    52.9576091,
    -1.1427438,
    'Curzon Street, Nottingham, NG3 1DG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Peckham Islamic Centre',
    'cami',
    51.4673952,
    -0.0696106,
    'London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zainabiya Islamic Centre',
    'cami',
    52.0114567,
    -0.7430387,
    'Peverel Drive, Milton Keynes, MK1 1NW',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Husseini mosque',
    'cami',
    51.5426645,
    -0.3639706,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Maidenhead Central Mosque',
    'cami',
    51.5255167,
    -0.7168128,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sittingbourne Islamic Cultural Centre',
    'cami',
    51.3419066,
    0.7288394,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame Masjid',
    'cami',
    52.5083532,
    -1.9029239,
    'Trinity Road, Birmingham, B6 6AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Holborn Muslim Community & Welfare Association',
    'cami',
    51.5193173,
    -0.1114336,
    'Brookes Court, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Derby',
    'cami',
    52.9101043,
    -1.4764435,
    'Rose Hill Street, Derby, DE23 8GA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Farooq',
    'cami',
    52.9137415,
    -1.4805647,
    'Mill Hill Lane, Derby, DE23 6SB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre Derby',
    'cami',
    52.9172401,
    -1.4763066,
    'Wilmot Street, Derby, DE1 2JR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anware Madina Mosque',
    'cami',
    55.9018082,
    -3.4986369,
    'Craingshill Road, Livingston, EH54 5DT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Finsbury Park Mosque',
    'cami',
    51.5635752,
    -0.1056431,
    'Saint Thomas''s Road, London, N4 2QH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Salaam',
    'cami',
    52.9078945,
    -1.4782966,
    'Corden Street, Derby, DE23 8GN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zia-E-Medina',
    'cami',
    52.5694878,
    -2.025306,
    'Walsall Road, Sandwell, WS10 9SW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ghamkol Sharif',
    'cami',
    52.4649278,
    -1.858464,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    51.5582227,
    -0.0547024,
    'Lea Bridge Road, London, E5 9QD',
    'Madina Mosque Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Derby Jamia Mosque',
    'cami',
    52.899026,
    -1.4859374,
    'Village Street, Derby, DE23 8DE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dorking Mosque',
    'cami',
    51.233993,
    -0.3298314,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Birmingham Central Mosque',
    'cami',
    52.4645947,
    -1.8905789,
    'Belgrave Middleway, Birmingham, B12 0XS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Telford Central Mosque',
    'cami',
    52.6987252,
    -2.5171607,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque and Islamic Centre of Brent',
    'cami',
    51.5556712,
    -0.2164802,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sheppey Islamic Cultural Centre',
    'cami',
    51.4224014,
    0.7780839,
    'Minster Road, Minster-on-Sea, ME12 3JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghausia & Community Centre',
    'cami',
    52.5873972,
    -1.991111,
    'Birchills Street, Walsall, WS2 8NF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Meadows Muslim Centre',
    'cami',
    52.9374039,
    -1.143991,
    'Collygate Road, Nottingham',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'UK Albanian Muslim Community & Cultural Centre',
    'cami',
    51.5327938,
    -0.2012252,
    'Carlton Vale, London, NW6 5DA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gousul Azzam Mosque',
    'cami',
    51.4573916,
    -0.0726475,
    'North Cross Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ghausia Mosque Trust',
    'cami',
    52.5162826,
    -1.8562277,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Lebanese Welfare Community',
    'cami',
    51.5373675,
    -0.1959203,
    'Brondesbury Road, London, NW6 6AS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamatia Islamic Centre',
    'cami',
    52.4431247,
    -1.860461,
    'Woodlands Road, Birmingham, B11 4ER',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Hub',
    'cami',
    52.42235,
    -1.7754657,
    'Hermitage Road, Solihull, B91 2LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Hamza',
    'cami',
    52.449381,
    -1.8828575,
    'Church Road, Birmingham, B13 9AE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    53.3641524,
    -1.4733688,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hazrat Mujaddid Alf-e Sanni',
    'cami',
    52.4520897,
    -1.8739336,
    'Birmingham, B12 8BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dover Masjid',
    'cami',
    51.1290659,
    1.3093521,
    'Park Place, Dover, CT16 1DQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'IQRA Academy',
    'cami',
    55.9301377,
    -3.1678363,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Oxford Mosque',
    'cami',
    51.7476553,
    -1.230763,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Amir-e-Millat',
    'cami',
    52.4553925,
    -1.865956,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Foresterhill Mosque',
    'cami',
    57.1543202,
    -2.1313961,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Amanah Masjid',
    'cami',
    52.4672973,
    -1.8766158,
    'Henley Street, Birmingham, B11 1JB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'New Peckham Mosque',
    'cami',
    51.4844573,
    -0.0761532,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ukim Jamia Masjid',
    'cami',
    52.4626944,
    -1.8630279,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    52.4595227,
    -1.8667638,
    'Walford Road, Birmingham, B11 1QA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imam Khoei Islamic Centre',
    'cami',
    51.5394147,
    -0.2098614,
    NULL,
    'Imam Al-Khoei Foundation',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Mosque of Brent',
    'cami',
    51.5498805,
    -0.2238311,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza Mosque',
    'cami',
    52.5081103,
    -1.880682,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Students House Masjid',
    'cami',
    52.4572845,
    -1.8862014,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zia ul Quran Jamia Mosque',
    'cami',
    52.4849563,
    -1.8545255,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Harrow Road Jamme Mosque',
    'cami',
    51.5285045,
    -0.2053079,
    'Lancefield Street, London, W10 4NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Barkaat Mosque',
    'cami',
    52.4768291,
    -1.8651293,
    'Tilton Road, Birmingham, B9 4PP',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamiat Ahl-e-Hadith & Al-Furquan Education Centre',
    'cami',
    52.9069272,
    -1.4890913,
    'Porter Road, Derby, DE23 6RE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khalm-e-Nubudwat Educational Centre',
    'cami',
    52.4773369,
    -1.8708427,
    'St Andrews Street, Birmingham, B9 4JT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bordesley Green Islamic Centre',
    'cami',
    52.4768835,
    -1.8569335,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami-a-Masjid Idara Minhaj-ul-Quran',
    'cami',
    52.4887839,
    -1.8455227,
    'Naseby Road, Birmingham, B8 3HE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jakia Masjid Naqsbandia Aslamia & Community Centre',
    'cami',
    52.4947713,
    -1.8353846,
    'Washwood Heath Road, Birmingham, B8 2HF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Derby Jamia Mosque',
    'cami',
    52.9071001,
    -1.4712407,
    'Dairy House Road, Derby, DE23 8HL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Glasgow Central Mosque',
    'cami',
    55.8523055,
    -4.251611,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leeds Grand Mosque',
    'cami',
    53.8064665,
    -1.5681443,
    'Woodsley Road, Leeds, LS6 1SN',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Green Lane Masjid',
    'cami',
    52.4731013,
    -1.8641447,
    'Green Lane, Birmingham, B9 5DB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Manchester Central Mosque & Islamic Cultural Centre',
    'cami',
    53.4557094,
    -2.2189768,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid & Islamic Centre',
    'cami',
    52.4687756,
    -1.8567479,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid & Islamic Centre',
    'cami',
    52.4683532,
    -1.8560179,
    'Coventry Road, Birmingham, B10 0LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid & Islamic Centre Darul Uloom Al-Islamah',
    'cami',
    52.4689226,
    -1.8572074,
    'Coventry Road, Birmingham, B10 0LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Ul Irfan',
    'cami',
    52.4763471,
    -1.8575071,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Mosque Wembley',
    'cami',
    51.5503635,
    -0.2978891,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Subshamallah',
    'cami',
    52.4702969,
    -1.8426885,
    'Somerville Road, Birmingham, B10 9DT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Tawheed Mosque',
    'cami',
    55.8417756,
    -4.1777266,
    'Braidfauld Street, Glasgow, G32 8PJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hazrat Shah-e-Walayat Education Centre',
    'cami',
    52.4638521,
    -1.8486475,
    'Oldknow Road, Birmingham, B10 0JA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ul Imam Il Bukhari',
    'cami',
    52.6578471,
    -1.1217889,
    'Loughborough Road, Leicester, LE4 5LR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tendring Deen Education Centre',
    'cami',
    51.7916257,
    1.1497724,
    'Clacton-on-Sea, CO15 1NJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Taqw',
    'cami',
    52.4624369,
    -1.8815156,
    'Kyrwicks Lane, Birmingham, B11 1SS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ayesha',
    'cami',
    51.5877588,
    -0.0784815,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Bilal',
    'cami',
    52.4556015,
    -1.8960253,
    'Willows Crescent, Birmingham, B12 9NS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nimab Trust Mosque',
    'cami',
    52.4888869,
    -1.873357,
    'Duddeston Mill Road, Birmingham, B7 4QN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aisha Masjid & Islamic Centre',
    'cami',
    51.4549365,
    -0.9364635,
    'London Road, Reading, RG6 1BW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Noor',
    'cami',
    53.7654773,
    -2.6946018,
    'Noor Street, Preston, PR1 1QS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza Masjid',
    'cami',
    53.7658631,
    -2.6959783,
    'St Paul''s Road, Preston, PR1 1UH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Salaam',
    'cami',
    53.7779299,
    -2.7018724,
    'Watling Street Road, Preston, PR2 8EA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Islamic Cultural Society',
    'cami',
    51.5873027,
    -0.10925,
    'Wightman Road, London, N8 0NA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque Noor-ul-Uloom',
    'cami',
    52.4699075,
    -1.8507632,
    'St Oswalds Road, Birmingham, B10 9RB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Witton Islamic Centre',
    'cami',
    52.5105704,
    -1.8878611,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wakefield Central Mosque',
    'cami',
    53.6799836,
    -1.4875755,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Sawafia Mosque',
    'cami',
    53.6815045,
    -1.4859963,
    'Park Hill Lane, Wakefield, WF1 4NJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aston Mosque & Community Centre',
    'cami',
    52.5029207,
    -1.8878955,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid E Noor',
    'cami',
    52.501642,
    -1.8856727,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Hijrah Mosque',
    'cami',
    52.4742071,
    -1.8392704,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qamarul Islam Mosque',
    'cami',
    52.4717544,
    -1.832314,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shacklewell Lane Mosque',
    'cami',
    51.5510022,
    -0.0740297,
    'Shacklewell Lane, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    53.6876289,
    -1.4924296,
    'Wakefield, WF1 3PD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamme Masjid Reading',
    'cami',
    51.4482295,
    -0.9522605,
    'Alexandra Road, Reading, RG1 5PF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Elgin Mosque',
    'cami',
    57.6468723,
    -3.3179197,
    'South Street, Elgin, IV30 1JG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Hanfia Ghousia',
    'cami',
    52.1326128,
    -0.483291,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Solihull Central Masjid and Community Centre',
    'cami',
    52.4089938,
    -1.7613905,
    'Warwick Road, Solihull, B91 3HG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Olton Project',
    'cami',
    52.4369878,
    -1.8091518,
    'Kineton Green Road, Solihull, B92 7DY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imam Ali Centre',
    'cami',
    51.4655056,
    -3.1670777,
    'Mount Stuart Square',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Essex Jamme Masjid Trust',
    'cami',
    51.5459012,
    0.7033029,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mohiuddin Jamia Masjid & Education Centre',
    'cami',
    55.9721944,
    -3.1752063,
    'Great Junction Street, Edinburgh, EH6 5JB',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qurani Murkuz',
    'cami',
    51.592929,
    0.0286139,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anwar-E-Madina Mosque and Community Centre',
    'cami',
    55.9605648,
    -3.1852708,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Umer',
    'cami',
    51.5784508,
    -0.0232799,
    'Queen''s Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Jamia Mosque',
    'cami',
    53.3586671,
    -1.4731201,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Easton Jamia Masjid',
    'cami',
    51.4672082,
    -2.5645486,
    'Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghousia Reading Islamic Centre',
    'cami',
    51.4523897,
    -0.9640844,
    'South Street, Reading, RG1 4QU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Mosque',
    'cami',
    51.4837003,
    -3.2002875,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    50.9093886,
    -1.3996202,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bait-ul-Aziz Islamic Cultural Centre',
    'cami',
    51.4975225,
    -0.0943793,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Mosque',
    'cami',
    51.511696,
    -0.0643535,
    'Christian Street, London, E1 1SE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Al-Arqam',
    'cami',
    55.9444914,
    -3.2001538,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Norwich and Norfolk Community Centre',
    'cami',
    52.6354144,
    1.2668274,
    'Dereham Road, Norwich, NR2 3UU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    53.3942371,
    -1.4307366,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    51.3843027,
    0.5447703,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noor El Islam Mosque',
    'cami',
    51.4728076,
    -3.173287,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Taha',
    'cami',
    51.5370355,
    -0.0042438,
    'Park Lane, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Elahi Jame Mosque',
    'cami',
    53.3893492,
    -1.4238977,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia',
    'cami',
    53.3900259,
    -1.4159681,
    'Industry Road, Sheffield, S9 5FP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar al-Islam Foundation',
    'cami',
    51.553547,
    -0.2170266,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    53.4109674,
    -1.3961115,
    'Bawtry Road, Sheffield, S9 1WZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zain Abiya',
    'cami',
    51.4609564,
    -1.0376918,
    'Reading',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bournemouth Islamic Centre & Central Mosque',
    'cami',
    50.7218195,
    -1.8800898,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Grimesthorpe Academy',
    'cami',
    53.3979191,
    -1.4545551,
    'Grimesthorpe Road, Sheffield, S4 7EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Ul Aloom Saddiqia',
    'cami',
    53.3938198,
    -1.4595601,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Noor-Us-Sunnah',
    'cami',
    52.4763178,
    -1.8401362,
    'Yardley Green Road, Birmingham, B9 5QF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Foundation Dagenham East Islamic Centre',
    'cami',
    51.5457643,
    0.165126,
    'Rainham Road South, Dagenham, RM10 7XJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abu Bakr Masjid',
    'cami',
    51.456964,
    -0.9959209,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bristol Jamia Mosque',
    'cami',
    51.4421603,
    -2.5815615,
    'Green Street, Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Haroonia',
    'cami',
    52.4890707,
    -1.8311133,
    'Alum Rock Road, Birmingham, B8 3PX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Brick Lane Jamme Masjid',
    'cami',
    51.5194535,
    -0.0720518,
    'Brick Lane, London, E1 6QL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Trowbridge Mosque',
    'cami',
    51.3160004,
    -2.2026841,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'York Mosque',
    'cami',
    53.9562307,
    -1.0635869,
    'Bull Lane, York, YO10 3EN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'York Mosque',
    'cami',
    53.9563212,
    -1.0639123,
    'Bull Lane, York, YO10 3EN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bridgwater Islamic Centre',
    'cami',
    51.1269689,
    -3.0036163,
    'Friarn Street, Bridgwater, TA6 3LH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladeshi Islamic Centre & Jami Mosque',
    'cami',
    52.5016007,
    -1.9101584,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque and Islamic Welfare Association Lozells',
    'cami',
    52.501258,
    -1.9118207,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Sunni Jame Masjid & Islamic Community Centre',
    'cami',
    52.5034237,
    -1.896298,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aston Masjid',
    'cami',
    52.504486,
    -1.8996378,
    'Mansfield Road, Birmingham, B6 6DA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal (R:) Sunnia Mosque & Islamic Community Centre',
    'cami',
    52.5047721,
    -1.8932411,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Faizal Islam',
    'cami',
    52.5100223,
    -1.8899462,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-Al-Falaah, Kokni Muslim Association',
    'cami',
    52.5083245,
    -1.9008325,
    'Trinity Road, Birmingham, B6 6AL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Ikhlas & Cambridge Islamic Centre',
    'cami',
    52.198776,
    0.1388875,
    'Devonshire Road, Cambridge, CB1 2BH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abubakr Siddiq Islamic Centre',
    'cami',
    52.2001377,
    0.1362138,
    'Mawson Road, Cambridge, CB1 2DZ',
    'Cambridge Muslim Welfare Society',
    true,
    false,
    true,
    false,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Huda',
    'cami',
    52.6427619,
    -1.1271058,
    'Britannia Street, Leicester, LE1 3LE',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    50.8241036,
    -0.1538826,
    'Bedford Place, Brighton, BN1 2PT',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'AL-Jamat-Ul-Muslimin of Bangladesh',
    'cami',
    52.2433843,
    -0.8989018,
    'Saint George''s Street, Northampton, NN1 2TR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Keele University Islamic Centre',
    'cami',
    53.0053007,
    -2.2722497,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makkah Masjid Mosque',
    'cami',
    53.8110022,
    -1.5730042,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khizra Mosque',
    'cami',
    53.5055565,
    -2.2376221,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Quwwat ul Islam Masjid',
    'cami',
    51.5444158,
    0.0256991,
    'Upton Lane, London, E7 9LN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Yousuf',
    'cami',
    51.5464882,
    0.0286684,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Forest Gate Mosque',
    'cami',
    51.5477542,
    0.0348003,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Abdullah Bin Masoud',
    'cami',
    52.4514046,
    -1.8597154,
    'Evelyn Road, Birmingham, B11 3JJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid and Islamic Centre',
    'cami',
    51.5186289,
    -0.5989887,
    'Slough',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Scotland Islamic Centre',
    'cami',
    56.1134618,
    -3.9329979,
    'Burghmuir Road, Stirling, FK7 7NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Mosque',
    'cami',
    53.870489,
    -1.9022903,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bradford Central Mosque',
    'cami',
    53.7979069,
    -1.7601352,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Hanfia Mosque',
    'cami',
    53.8057189,
    -1.7696631,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bedford Central Jamee Masjid',
    'cami',
    52.1369895,
    -0.4745038,
    'Brereton Road, Bedford, MK40 1HU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North Jamia Watford Mosque',
    'cami',
    51.6825527,
    -0.4017903,
    '167 N Western Ave, Watford, Watford, WD25 0AQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al‐Mahdi Mosque',
    'cami',
    53.8010402,
    -1.7445677,
    'Rees Way, Bradford, BD3 0DZ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Fath',
    'cami',
    51.5149566,
    -0.0290893,
    'Burdett Road, London, E14 7DQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Canterbury Islamic Centre',
    'cami',
    51.2963498,
    1.0648859,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah jalal Mosque & Centre',
    'cami',
    52.7780966,
    -1.2056767,
    'Rendell Street, LE11 1LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Portsmouth Jami Mosque',
    'cami',
    50.7939468,
    -1.0799079,
    'Victoria Road North, PO5 1PS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khazra Central Mosque',
    'cami',
    55.8404944,
    -4.2605152,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre',
    'cami',
    51.5133127,
    -0.1344639,
    'Berwick Street, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bristol Central Mosque',
    'cami',
    51.4619791,
    -2.5627135,
    'Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sutton Central Masjid',
    'cami',
    51.3624354,
    -0.1883174,
    'Carshalton Road, Sutton, SM1 4LF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Crawley Mosque',
    'cami',
    51.0975348,
    -0.2138951,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hasrat Shahjal Al Mosque',
    'cami',
    51.5649655,
    -1.7802757,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Madina',
    'cami',
    51.9001849,
    -2.070014,
    'Sherborne Place, Cheltenham, GL52 2RS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shipley Masjid',
    'cami',
    53.8333034,
    -1.7793748,
    'Windsor Road, Shipley, BD18 3EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bashir Ahmed Masjid',
    'cami',
    50.9230772,
    -1.3948892,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ad Duha Institute',
    'cami',
    52.4378488,
    -1.8470407,
    'Stratford Road, Birmingham, B28 8AF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Cultural & Education Centre',
    'cami',
    52.4450741,
    -1.8632392,
    'Greswolde Road, Birmingham, B11 4DL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mu''eed',
    'cami',
    52.1822081,
    0.1499747,
    'Mowbray Road, Cambridge, CB1 7SY',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Exeter Mosque',
    'cami',
    50.7292049,
    -3.5250632,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Bhokari Education Centre',
    'cami',
    52.4476858,
    -1.857945,
    'Knowle Road, Birmingham, B11 3AW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North London Mosque',
    'cami',
    51.5649049,
    -0.0687451,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Masjid Bilal',
    'cami',
    53.8128071,
    -1.5137514,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shia Community Centre Edinburgh',
    'cami',
    55.9737788,
    -3.1761214,
    'King Street, Edinburgh, EH6 6TN',
    'Wali-Al-Asir Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ar Rahman SCT',
    'cami',
    51.7390235,
    -0.3333032,
    'Abbots Avenue, St Albans, AL1 2HX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Society of Airdrie & Coatbridge',
    'cami',
    55.861287,
    -4.0050649,
    'Quarry Street, Coatbridge, ML5 3PU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Risalah',
    'cami',
    53.3893216,
    -1.4816226,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makii Marjid & Madrassa',
    'cami',
    52.5051488,
    -1.9313756,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Madni',
    'cami',
    53.7231845,
    -1.8722584,
    'Gibbet Street, Halifax',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jameah Fatimiah Mosque',
    'cami',
    52.9706631,
    -1.1642632,
    'Berridge Road, Nottingham, NG7 6HT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baytul ''Ilm',
    'cami',
    52.640024,
    -1.1083278,
    'Spinney Hill Road, Leicester, LE5 3GH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Ansar',
    'cami',
    52.6535652,
    -1.0967755,
    'Edgehill Road, LE4 9EE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Jame Masjid',
    'cami',
    51.4707216,
    -2.56402,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Harrow Central Mosque',
    'cami',
    51.5890841,
    -0.3321979,
    'Station Road, Harrow, HA1 2SQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Abu Bakr Jamia Masjid',
    'cami',
    50.9099171,
    -1.3974368,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Ihsaan',
    'cami',
    52.6402022,
    -1.0683882,
    'Gervas Road, Leicester, LE5 2EP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Loughborough Mosque and Islamic Cultural Association',
    'cami',
    52.7695431,
    -1.1981466,
    'King Street, Loughborough, LE11 1SB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Basingstoke Mosque',
    'cami',
    51.263496,
    -1.0923061,
    'Sarum Hill, Basingstoke, RG21 8SS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Redcoat Community Centre and Mosque',
    'cami',
    51.5165909,
    -0.0484559,
    'Stepney Way, London, E1 3DW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Ihsan Mosque and Islamic Centre',
    'cami',
    52.6271996,
    1.2890366,
    'Chapelfield East, Norwich, NR2 1SF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'ShahJahil Jami Masjid',
    'cami',
    52.4579276,
    -1.8667081,
    'Medlicott Road, Birmingham, B11 1UG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ahl-e-hadith',
    'cami',
    53.7197575,
    -1.8857899,
    'Hopwood Lane',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz Quba',
    'cami',
    52.6285756,
    -1.1188467,
    'Tichborne Street, Leicester, LE2 0NQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ali',
    'cami',
    52.6395135,
    -1.0942112,
    'Smith Dorrien Road, Leicester, LE5 4BG',
    'sunni',
    true,
    true,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar al Aloom Qadmia Jilamia',
    'cami',
    51.5837676,
    -0.0145515,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Amaan Mosque',
    'cami',
    53.4621579,
    -2.2394218,
    'Greenheys Lane, Manchester, M15 6NQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    51.584883,
    -0.0274884,
    'Mansfield Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Mosque & Madrisa (Highfield Branch)',
    'cami',
    53.8686784,
    -1.9104665,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Jami Masjid & Jamia Quraniah',
    'cami',
    53.8666887,
    -1.9104771,
    'Keighley, BD21 2AH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sakina Trust Centre',
    'cami',
    51.5829834,
    -0.0131196,
    'Vestry Road',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Corby Central Masjid',
    'cami',
    52.4877932,
    -0.6976383,
    'Stuart Road, Corby, NN17 1RL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre of Edgware',
    'cami',
    51.6080025,
    -0.2737492,
    'Deansbrook Road, London Borough of Barnet, HA8 9BE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Firdaws Mosque',
    'cami',
    53.7885835,
    -1.7481566,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North Finchley Mosque',
    'cami',
    51.6114439,
    -0.1761317,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ahad',
    'cami',
    51.5873716,
    -0.0269418,
    'Erskine Road, London, E17 6SA',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Furqan',
    'cami',
    52.6407911,
    -1.1257486,
    'Kamloops Crescent, Leicester, LE1 2HX',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Sultania And Education Centre',
    'cami',
    52.9519869,
    -1.1259401,
    'Sneinton Dale, Nottingham, NG2 4HE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahporan Masjid',
    'cami',
    53.4508796,
    -2.2018544,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Banbury Makkah Masjid (Spiritual Centre)',
    'cami',
    52.0633073,
    -1.3461983,
    'Boxhedge Road, Banbury, OX16 0BP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aberystwyth Masjid',
    'cami',
    52.412773,
    -4.0747863,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ipswich & Suffolk Bangladeshi Muslim Community Centre and Mosque',
    'cami',
    52.0559202,
    1.1600896,
    'Bond Street, Ipswich, IP4 1JE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Beeston Muslim Centre',
    'cami',
    52.9277725,
    -1.2048107,
    'Evelyn Street, Nottingham, NG9 2EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Omar Faruque Mosque and Cultural Centre',
    'cami',
    52.2320251,
    0.1357544,
    'Kirkwood Road, Cambridge, CB4 2PF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Mosque',
    'cami',
    53.6810094,
    -1.6281319,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Zakaria',
    'cami',
    53.6839928,
    -1.6312226,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    52.4177165,
    -1.502865,
    'George Street, Coventry',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Islam Centre',
    'cami',
    51.5900857,
    -0.003659,
    'Corbett Road, London, E17 3JZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-at-Tauwheed Mosque',
    'cami',
    52.6133455,
    1.7265192,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Grantham Islamic Centre',
    'cami',
    52.9127955,
    -0.641504,
    'Elmer Street North, Grantham, NG31 6RE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Basford Culture Centre',
    'cami',
    52.97942,
    -1.1724348,
    'Nottingham Road, Nottingham, NG7 7EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    52.9643126,
    -1.178144,
    'Alfreton Road, Nottingham, NG7 5NG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    53.4044437,
    -1.4565333,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shoreditch Masjid Trust',
    'cami',
    51.5245585,
    -0.0747866,
    'Redchurch Street, London, E2 7DJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal masjid',
    'cami',
    51.3836264,
    -0.1086315,
    'Handcroft Road, Croydon, CR0 3LE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jemia Mosque',
    'cami',
    53.4310666,
    -1.3643398,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Islamia Razvia (reg)',
    'cami',
    52.4525407,
    -1.8278346,
    'Alexander Road, Birmingham, B27 6ET',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ahlul Bayt Centre',
    'cami',
    51.7382063,
    -1.219508,
    'Oxford Road, Oxford, OX4 2EN',
    'Ahlul Bayt Centre Oxford',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Subhan Mosque',
    'cami',
    51.3839835,
    -0.1037258,
    'St James Road, Croydon, CR0 2US',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjid',
    'cami',
    52.9709277,
    -1.1738295,
    'Gladstone Street, Nottingham, NG7 6GA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Imam Ali',
    'cami',
    51.5571072,
    -0.3195106,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Airdrie & Coatbridge Islamic Centre',
    'cami',
    55.8666552,
    -3.9849344,
    'Bell Street, Airdrie, ML6 0BS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Risaalah Mosque & Islington Islamic Centre',
    'cami',
    51.5575487,
    -0.1202505,
    'Parkhurst Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kings Heath Mosque',
    'cami',
    52.4359555,
    -1.896777,
    'Station Road, Birmingham, B14 7TA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darus Salaam Mosque',
    'cami',
    51.510049,
    -0.3730984,
    'Boyd Avenue, Southall, UB1 3BT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faiza-e-Madinah Wembley',
    'cami',
    51.5622153,
    -0.2899787,
    'Forty Avenue, HA9 8JW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    55.8822216,
    -4.363733,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Madrassa & Spiritual Centre',
    'cami',
    52.5769497,
    -0.2543777,
    'Midland Road, Peterborough, PE3 6DD',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalia Jamme Masjeed',
    'cami',
    51.6459495,
    -0.0471284,
    'High Street, Ponders End, EN3 4EZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mohammedi Islamic Centre',
    'cami',
    52.4595403,
    -1.8633833,
    'Walford Road, Birmingham, B11 1QJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East London Mosque',
    'cami',
    51.517377,
    -0.065376,
    'Whitechapel Road, London, E1 1JQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Zahra Foundation',
    'cami',
    52.9472361,
    -1.1735217,
    'Osmaston Street, Nottingham, NG7 1SD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Salahuddin',
    'cami',
    51.516306,
    -0.1715291,
    'Norfolk Place',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Broomhouse Mosque',
    'cami',
    55.9284073,
    -3.27709,
    'Broomhouse Crescent, Edinburgh, EH11 3RH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Croydon Mosque & Islamic Centre',
    'cami',
    51.3894662,
    -0.1126267,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bournemouth Jamei Mosque',
    'cami',
    50.7424819,
    -1.8770498,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abu Huraira',
    'cami',
    52.6414669,
    -1.0940344,
    'Haynes Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Northfields Education Centre',
    'cami',
    52.6525675,
    -1.0954757,
    'Essex Road, Leicester, LE4 9EE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wirral Deen Centre',
    'cami',
    53.385356,
    -3.0323839,
    'Borough Road, Birkenhead',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Hidayah',
    'cami',
    53.4611704,
    -2.275117,
    'Humphrey Road, Manchester, M16 9DD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stoke-on-Trent Muslim Welfare and Community Centre',
    'cami',
    53.0175969,
    -2.1866171,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Community Centre',
    'cami',
    51.3758693,
    0.5393628,
    'Thorold Road, Chatham, ME5 7DR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghousia',
    'cami',
    52.1935142,
    -2.2107134,
    'Worcester, WR5 1JU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinah Masjid & Community Centre',
    'cami',
    55.8753148,
    -3.1050124,
    'Lothian Street, Bonnyrigg, EH19 3AD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladeshi Islamic Association Centre',
    'cami',
    52.5005566,
    -1.965927,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Baitul Amaan',
    'cami',
    52.5020124,
    -1.9678284,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Madina Ashiful Loom Masjid',
    'cami',
    52.4883971,
    -1.8493971,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qadria Trust Islamic Education',
    'cami',
    52.4572577,
    -1.8736573,
    'Alfred Street, Birmingham, B12 8JL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Karam Mosque',
    'cami',
    51.5425027,
    0.0367251,
    'Katherine Road, London, E7 8LT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressa Islamiyah (old madressah)',
    'cami',
    53.7097239,
    -1.6374042,
    NULL,
    'Mount Pleasant Islamic Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madina Jami Masjid',
    'cami',
    52.1964375,
    -2.2107648,
    'Worcester, WR4 9PS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia al Karim',
    'cami',
    51.8608005,
    -2.2378823,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Stratford',
    'cami',
    51.5491776,
    0.0015906,
    'Brydges Road, London, E15 1NA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Holloway Mosque',
    'cami',
    51.5509743,
    -0.1098397,
    'Holloway Road, London, N7 8DD',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Islamic Turkish Association',
    'cami',
    51.5527209,
    -0.0866061,
    'Green Lanes, London, N16 9ND',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Rahma Mosque',
    'cami',
    53.3943047,
    -2.9606484,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Surma Islamic Education Centre Madrassa & Masjid',
    'cami',
    52.4617508,
    -1.8524865,
    'Waverley Road, Birmingham, B10 0EP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Green Oak Academy (Kings Heath)',
    'cami',
    52.4224378,
    -1.89269,
    'Alcester Road South, Birmingham, B14 6DR',
    'Green Oak Academy',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Madina Mosque',
    'cami',
    52.5803299,
    -0.2489767,
    'Gladstone Street, Peterborough, PE1 2BN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Balham Mosque',
    'cami',
    51.4465338,
    -0.1491658,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid AlBirr',
    'cami',
    52.3043744,
    -1.9379387,
    'Redditch, B98 7AZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Redditch New Mosque',
    'cami',
    52.3006432,
    -1.9365465,
    'Redditch, B98 7AZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Rizvia',
    'cami',
    52.4831481,
    -2.1233205,
    'Albion Street, Brierley Hill, DY5 3EE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'City Jamia Masjid',
    'cami',
    53.4619184,
    -2.2077526,
    'Stockport Road, M13 0LF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wolverhampton Central Mosque',
    'cami',
    52.5960705,
    -2.1299633,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Masjid',
    'cami',
    52.0564722,
    1.1654832,
    'St Helens Street, Ipswich, IP4 2LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Camberwell Islamic Centre',
    'cami',
    51.4787255,
    -0.0944046,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leamington Road Mosque',
    'cami',
    53.7506683,
    -2.501614,
    'Leamington Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Jame Masjid Euston Mosque',
    'cami',
    51.527302,
    -0.1374519,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Atta Mosque',
    'cami',
    52.5831288,
    -2.1015467,
    'Willenhall Road, Wolverhampton, WV1 2HT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Hafeez Mosque',
    'cami',
    52.9559521,
    -1.1171158,
    'Sneinton Dale, Nottingham, NG3 7DN',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qadria Jilania Islamic (S+E) Centre',
    'cami',
    53.4569713,
    -2.2029736,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stepney Shahjalal Mosque & Cultural Centre',
    'cami',
    51.5202088,
    -0.0408034,
    'Duckett Street, London, E1 4TD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Madina Jamia Mosque',
    'cami',
    53.8113009,
    -1.5679579,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nottingham Alevi Cultural Centre & Cemevi',
    'cami',
    52.9552083,
    -1.1357401,
    'Handel Street, Nottingham, NG3 1JE',
    'alevi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazul Uloom',
    'cami',
    51.5499152,
    -0.0740416,
    'Sandringham Road, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Mosque',
    'cami',
    51.0609241,
    -0.3230504,
    'Park Terrace East, Horsham, RH13 5DN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque & Islamic Centre',
    'cami',
    52.4733407,
    -2.0754748,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Amin Jame Masjid & Madrasha',
    'cami',
    53.7974726,
    -1.7240215,
    'Al Amin Square, Bradford, BD3 8AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Tabbligh-Ul-Islam',
    'cami',
    53.7762355,
    -1.7587549,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tawakkulia Jamia Masjid & Islamia Madrasa',
    'cami',
    53.8026662,
    -1.758044,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tabligh-ul-Islam Mosque',
    'cami',
    53.7880267,
    -1.7896146,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hussainia Islamic Mission',
    'cami',
    53.7853939,
    -1.7719186,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Tabligh-ul-Islam',
    'cami',
    53.7909358,
    -1.7712511,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Mosque',
    'cami',
    53.1990065,
    -2.9244912,
    'CH1 5LT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nasir Mosque',
    'cami',
    54.6930594,
    -1.2162475,
    'Brougham Terrace, Hartlepool, TS24 8EY',
    'ahmadiyya',
    true,
    true,
    true,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'City Central Mosque',
    'cami',
    53.0183531,
    -2.1769677,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Suleymaniye Mosque',
    'cami',
    51.5353015,
    -0.0764441,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kotku Mosque',
    'cami',
    54.9705697,
    -1.6486262,
    'Grainger Park Road, Newcastle upon Tyne, NE4 8SA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jahan Mosque',
    'cami',
    51.3226743,
    -0.5445501,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladeshi Isalmic Social Organisation & Modina Mosque',
    'cami',
    52.4562771,
    -1.8856076,
    'Moseley Road, Birmingham, B12 9AE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'West London Islamic Centre & Greenford Mosque',
    'cami',
    51.5268963,
    -0.3519161,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid UKIM',
    'cami',
    51.5104278,
    -0.326266,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aisha Mosque & Islamic Centre',
    'cami',
    52.5766956,
    -1.9850192,
    'Rutter Street, Walsall, WS1 4HJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    52.576351,
    -1.9908742,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Yusuf',
    'cami',
    51.5659057,
    -0.120722,
    'Hornsey Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hussaini Islamic Mission & Ali (AS) Mosque, Shia Muslim Community & Welfare Centre',
    'cami',
    52.5953874,
    -2.1522746,
    'Newhampton Road West, Wolverhampton, WV6 0RS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ibraheem',
    'cami',
    53.773146,
    -1.5487639,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'NMC Centre & Masjid',
    'cami',
    53.2622498,
    -2.5061801,
    'Church Road, Northwich, CW9 5NT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Cultural Centre',
    'cami',
    53.3200739,
    -3.4931998,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Galler Turkish Mosque',
    'cami',
    53.3156099,
    -3.4781392,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noor Al Hadi Mosque',
    'cami',
    53.3896753,
    -1.4274416,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ghafoor Mosque',
    'cami',
    52.4640773,
    -2.0293757,
    'Long Lane, Halesowen, B62 9JT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Blackheath',
    'cami',
    52.47077,
    -2.0351902,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Mosque',
    'cami',
    51.4992687,
    -0.3847758,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Redhill Islamic Centre',
    'cami',
    51.2281938,
    -0.1720894,
    'Earlswood Road, Redhill, RH1 6HW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chesham Mosque',
    'cami',
    51.7119026,
    -0.6143601,
    'Bellingdon Road, Chesham, HP5 2NN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gillani Noor Mosque',
    'cami',
    52.9810001,
    -2.1214011,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Londra Diyanet Camii',
    'cami',
    51.5880084,
    -0.1175137,
    'High Street, London, N8 7FB',
    'Turkish Religious Foundation of the United Kingdom',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madni Masjid',
    'cami',
    52.9714865,
    -1.1613821,
    'Alberta Terrace, Nottingham, NG7 6JA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Da''watul Islam Mosque',
    'cami',
    53.6495706,
    -2.6225499,
    'Charnock Street, Chorley, PR6 0NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Bilaal',
    'cami',
    53.7628528,
    -2.4739791,
    'Cedar Street, Blackburn',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Islamic Centre',
    'cami',
    51.4729131,
    -2.5583833,
    'Fishponds Road, Bristol, BS5 6PR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Kharza',
    'cami',
    52.9864102,
    -1.1801876,
    'Queensberry Street, Nottingham, NG6 0DG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Surrey Muslim Centre',
    'cami',
    51.3744251,
    -0.4795683,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Cultural Centre Wollaton',
    'cami',
    52.9565446,
    -1.1939007,
    'Radford Bridge Road, Nottingham, NG8 1NB',
    'Karimia Institute',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ghausia Qasmia & Community Hub',
    'cami',
    52.5784632,
    -1.9827354,
    'Mount Street, Walsall, WS1 3PJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Farooq',
    'cami',
    52.575683,
    -1.9894955,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Syeda Fatima Zahra Centre',
    'cami',
    52.5877344,
    -1.9914702,
    'Birchills Street, Walsall, WS2 8NF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Idara Taleem ul Quran',
    'cami',
    55.9384166,
    -3.218234,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalia Sunni Jami Masjid & Islamic Education Centre',
    'cami',
    52.5776271,
    -1.9801244,
    'Bath Street, Walsall, WS1 3BX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Jami Masjid & Madrasah',
    'cami',
    52.578412,
    -1.9831296,
    'Hart Street, Walsall, WS1 3PE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Usman',
    'cami',
    52.5779055,
    -1.9839026,
    'Brace Street, Walsall, WS1 3PS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque & Islamic Centre',
    'cami',
    53.5291866,
    -2.1170523,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Noor',
    'cami',
    53.4607508,
    -2.2631296,
    'Stamford Street, Trafford, M16 9LT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Imdadia',
    'cami',
    53.4609665,
    -2.2664899,
    'Blackburn Street, Trafford, M16 9LJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zakaria Mosque',
    'cami',
    53.4480956,
    -2.2589191,
    'Clarendon Road, M16 8LD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Sulthainia Mosque',
    'cami',
    53.5155873,
    -1.1152511,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tees Valley Muslim Community Centre',
    'cami',
    54.547116,
    -1.3248718,
    'Sopwith Close, Stockton-on-Tees, TS18 3TT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Majadidia Taleem-ul-quran',
    'cami',
    52.4695872,
    -1.8415012,
    'Somerville Road, Birmingham, B10 9DU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghausia',
    'cami',
    51.5098941,
    -0.5786375,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Jame Mosque',
    'cami',
    52.3028327,
    -0.6873422,
    'Winstanley Road, Wellingborough, NN8 1JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hethersett Masjid',
    'cami',
    52.6022796,
    1.1779913,
    'Henstead Road, Norwich, NR9 3JH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Umar',
    'cami',
    52.5703287,
    -2.0268166,
    'Bills Street, Walsall, WS10 8BB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    53.4313444,
    -1.3684584,
    'College Road, Rotherham, S60 1JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Moorlands Islamic Centre',
    'cami',
    54.0462893,
    -2.7922893,
    'Dumbarton Road, Lancaster, LA1 3BX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    53.4255672,
    -1.3507575,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Abu Bakr Mosque',
    'cami',
    53.4376125,
    -1.3496061,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar-ul Islam Central Mosque',
    'cami',
    54.5704923,
    -1.2311806,
    'Southfield Road, Middlesbrough, TS1 3EX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bexhill Masjid & Islamic Centre',
    'cami',
    50.841369,
    0.4741471,
    'Clifford Road, Bexhill-on-Sea, TN40 1QA',
    'Bexhill Islamic Association',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Muntada Al-Islami Trust',
    'cami',
    51.4763922,
    -0.2016742,
    'Bridges Place, London, SW6 4HW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Greenbank Masjid',
    'cami',
    51.4678463,
    -2.5577706,
    'Bristol',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Awliya Allah',
    'cami',
    54.9561958,
    -1.60335,
    'Ely Street, Gateshead, NE8 1NR',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islah-Ul-Muslimeen',
    'cami',
    52.3028771,
    -0.6868359,
    'Winstanley Road, Wellingborough, NN8 1JD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Karam Trust Mosque',
    'cami',
    52.0652423,
    -0.7892129,
    'North Street, Milton Keynes, MK13 0EE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid us Sunnah',
    'cami',
    52.6168852,
    -1.1260974,
    'Welford Road, Leicester, LE2 6BD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Umar',
    'cami',
    52.6242263,
    -1.1018273,
    'Evington Drive, Leicester, LE5 5PF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tawfiq Masjid & Centre',
    'cami',
    51.4534319,
    -2.5628763,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Blackhall Mosque',
    'cami',
    55.9612397,
    -3.2575997,
    'House O'' Hill Road, Edinburgh, EH4 2AJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Jamia Suffa-Tul-Islam Grand Mosque',
    'cami',
    53.7843366,
    -1.769082,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kirkcaldy Central Mosque',
    'cami',
    56.1308876,
    -3.1750972,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Noor',
    'cami',
    53.6391186,
    -1.7976717,
    'Crosland Road, Huddersfield, HD1 3JS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Rugby Mosque',
    'cami',
    52.3745447,
    -1.2514456,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Madina Mosque Barking',
    'cami',
    51.544186,
    0.077535,
    'Victoria Road, Barking, IG11 8PY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Alnoor',
    'cami',
    51.5307564,
    0.0813532,
    'Gascoigne Road, Barking, IG11 7LH',
    NULL,
    true,
    true,
    true,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Jamia Masjid',
    'cami',
    54.9691721,
    -1.6400589,
    'Malvern Street, Newcastle upon Tyne, NE4 6SU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Langley Green Islamic Centre & Mosque',
    'cami',
    51.1310199,
    -0.1864385,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jahan Mosque',
    'cami',
    52.9656038,
    -1.1680699,
    'Gregory Boulevard, Nottingham, NG7 6BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noor Mosque',
    'cami',
    51.1264477,
    -0.1926709,
    'Langley Drive, Crawley, RH11 7TF',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Banbury Madni Masjid',
    'cami',
    52.061785,
    -1.3250553,
    'Merton Street, Banbury, OX16 4RP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Islamia Education Centre',
    'cami',
    52.9633241,
    -1.1697434,
    'Hubert Street, Nottingham, NG7 5AJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Portsmouth Hafiziah Madrasah',
    'cami',
    50.7856786,
    -1.084249,
    'Marmion Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gilwell Mosque',
    'cami',
    51.6498721,
    0.0015732,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The London Mosque',
    'cami',
    51.4511567,
    -0.2073569,
    'Gressenhall Road, London, SW18 5QL',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sunderland Jami-Masjid',
    'cami',
    54.902607,
    -1.3975112,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Zakariya',
    'cami',
    53.6673102,
    -1.4781174,
    'Wakefield, WF1 5BN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    53.6687333,
    -1.4794246,
    'St. Catherine Street, Wakefield, WF1 5BP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Poplar Shahjalal Mosque',
    'cami',
    51.5094826,
    -0.0173918,
    'Hale Street, London, E14 0BF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Azhar Mosque',
    'cami',
    54.9902343,
    -1.4400354,
    'South Shields',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ma''mur Jame-E- Masjid and Islamic Center',
    'cami',
    55.0013101,
    -1.4290163,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Anwaar e Madinah',
    'cami',
    54.9058474,
    -1.4012136,
    'St Mark''s Road North, Sunderland, SR4 7EG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame Masjid & Madrassa Salafia',
    'cami',
    53.9592102,
    -2.0317255,
    'Midland Street, Skipton, BD23 1SE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Poplar Mosque & Community Centre',
    'cami',
    51.5109868,
    -0.0097531,
    'Webber Path, London, E14 0FZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nasrul-Lahi-i-Fathi Society of Nigeria',
    'cami',
    51.4945109,
    -0.0802016,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Whitley Bay Islamic Cultural Centre and Masjid',
    'cami',
    55.0358186,
    -1.4541559,
    'Hillheads Road, Whitley Bay, NE25 8HR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame',
    'cami',
    52.6369341,
    -1.105215,
    'Asfordby Street, Leicester, LE5 3QJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakr',
    'cami',
    52.6279428,
    -1.1526767,
    'Barclay Street, Leicester, LE3 0JD',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Furqan',
    'cami',
    52.6314629,
    -1.1061479,
    'East Park Road, Leicester, LE5 5AY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Aisha',
    'cami',
    52.6309511,
    -1.1096934,
    'Cork Street, Leicester, LE5 5AN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tabuk & Evington Muslim Centre',
    'cami',
    52.6228698,
    -1.1029059,
    'Stoughton Drive North, Leicester, LE5 5UD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid an Noor',
    'cami',
    52.6342387,
    -1.1101539,
    'Berners Street, Leicester, LE2 0FS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Education Trust Cumbernauld',
    'cami',
    55.9587575,
    -4.0120383,
    'Craighalbert Way, Cumbernauld, G68 0LS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shair-e-Rabbani Mosque',
    'cami',
    53.4473649,
    -2.262905,
    'Bedford Avenue, M16 8JS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid al Falah & Islamic Educational Trust',
    'cami',
    52.6351991,
    -1.1150051,
    'Keythorpe Street, Leicester, LE2 0AL',
    'sunni',
    true,
    true,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tajdaar e Madina',
    'cami',
    52.63599,
    -1.1169123,
    'Garendon Street, Leicester, LE2 0AH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Usman',
    'cami',
    52.6368859,
    -1.1133119,
    'Nedham Street, Leicester, LE2 0HB',
    'Tabligh Jamati''s',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leicester Central Mosque',
    'cami',
    52.6322866,
    -1.1215754,
    'Conduit Street, Leicester, LE2 0JN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid & Community Centre',
    'cami',
    53.4459997,
    -2.1903096,
    'Barlow Road, Manchester, M19 3DJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Islam Centre',
    'cami',
    51.5796535,
    -0.0049326,
    'Lea Bridge Road, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abdullah Quilliam Mosque',
    'cami',
    53.4142884,
    -2.9605132,
    'Brougham Terrace, Liverpool',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    54.9800811,
    -1.6488164,
    'Wingrove Gardens, Newcastle upon Tyne, NE4 9HS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Falkirk Central Mosque',
    'cami',
    55.9979575,
    -3.7807457,
    'Burnhead Lane, Falkirk, FK1 1UG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ar-Rahman',
    'cami',
    52.6321983,
    -1.1165066,
    'Guthlaxton Street, Leicester, LE2 0UX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ata',
    'cami',
    54.9925779,
    -1.5397579,
    'North Road, Wallsend, NE28 8LF',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Heaton Mosque & Islamic Centre',
    'cami',
    54.9858067,
    -1.5816489,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aziziye Mosque and Community Centre',
    'cami',
    51.5553657,
    -0.0750781,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid An Noor',
    'cami',
    52.6411898,
    -1.1303347,
    'Belgrave Gate, Leicester, LE1 3XL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Ummah Mosque',
    'cami',
    51.5124129,
    -0.0581906,
    'Bigland Street, London, E1 2ND',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Livingston Masjid & Islamic Centre',
    'cami',
    55.9012767,
    -3.5675834,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'King''s Cross Mosque and Islamic Centre',
    'cami',
    51.528205,
    -0.1212167,
    'Cromer Street, London, WC1H 8DU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newcasyle Central Mosque',
    'cami',
    54.9735727,
    -1.6473047,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madni Jamia Masjid',
    'cami',
    53.7960007,
    -1.7185127,
    'Thornbury Road, Bradford, BD3 8SA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Noor',
    'cami',
    51.8575754,
    -2.2367648,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khoja Shi''a Muslim Community',
    'cami',
    51.8323771,
    -2.2754319,
    NULL,
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'MIcklefield Mosque',
    'cami',
    51.6305549,
    -0.7119255,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zeenat Masjid',
    'cami',
    52.4191644,
    -1.4981813,
    'Stoney Stanton Road, Coventry',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Islamic Brotherhood Pakistan And Kashmir Family Centre',
    'cami',
    52.4169173,
    -1.5018479,
    'Eagle Street East, Coventry',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Manchester Islamic Centre & Didsbury Mosque',
    'cami',
    53.4228001,
    -2.2466722,
    'Burton Road, Manchester, M20 2WA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Prayer Rooms',
    'cami',
    54.7658026,
    -1.5758409,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'City Mosque Preston',
    'cami',
    53.7631638,
    -2.6984111,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zakariya Masjid',
    'cami',
    51.9008463,
    -0.4936375,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-E-Ali',
    'cami',
    51.8929878,
    -0.4492025,
    'Beechwood Road, Luton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Al-Alkbaria',
    'cami',
    51.8958621,
    -0.4454061,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Luton Central Mosque',
    'cami',
    51.8873604,
    -0.4319557,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Jame Masjid',
    'cami',
    51.887367,
    -0.4299413,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zakariyya Jaam''e Masjid',
    'cami',
    53.5685514,
    -2.4416975,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Lateef Mosque',
    'cami',
    53.4246172,
    -2.9554255,
    'Breck Road, Liverpool, L5 6PU',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Rahman Mosque',
    'cami',
    53.5658085,
    -2.4472761,
    'Randal Street, Bolton, BL3 4AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Camberley Mosque',
    'cami',
    51.3373992,
    -0.7568599,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ghousia Mosque',
    'cami',
    53.8743786,
    -1.9090054,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Sadiq',
    'cami',
    53.3149106,
    -3.4981311,
    'Warren Road, Rhyl, LL18 1DP',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Burdett Estate Mosque',
    'cami',
    51.5170865,
    -0.0265323,
    'Masjid Lane, London, E14 7UD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Noorul Islam',
    'cami',
    53.7101747,
    -1.6406745,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Noor',
    'cami',
    53.7101386,
    -1.6421097,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Hilal',
    'cami',
    53.701477,
    -1.635044,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cemetery Lodge Prayer Room',
    'cami',
    53.8093245,
    -1.5563658,
    NULL,
    'Leeds University Union Islamic Society',
    true,
    false,
    false,
    false,
    false,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gravesend Shahjalal Masjid',
    'cami',
    51.4265328,
    0.3894214,
    'St Hilda''s Way, Gravesend, DA12 4AZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cardigan Islamic Centre',
    'cami',
    52.0817975,
    -4.6631121,
    'Quay Street, Cardigan / Aberteifi, SA43 1HR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Yaqeen',
    'cami',
    51.2419342,
    -0.1704939,
    'Warwick Road, Redhill, RH1 1BU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Clarkston Community Centre',
    'cami',
    55.795005,
    -4.2727246,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Belfast Islamic Centre',
    'cami',
    54.582409,
    -5.9420906,
    'Wellington Park, Belfast, BT9 6DN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cheadle Masjid',
    'cami',
    53.359326,
    -2.2195115,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Noorul Islam',
    'cami',
    53.5897545,
    -2.4314281,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Masjid',
    'cami',
    53.5911793,
    -2.4433627,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sughra Mosque',
    'cami',
    53.5548714,
    -2.4011484,
    'Granville Street, Bolton, BL4 7LD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'ShahJalaal Islamic Centre',
    'cami',
    51.4573485,
    -0.9843521,
    'Stanley Street, Reading',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Masjid',
    'cami',
    53.6209193,
    -2.1453653,
    'Bulwer Street, Rochdale, OL16 2EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Madina Masjid',
    'cami',
    53.5830512,
    -2.4451754,
    'Gower Street, Bolton, BL1 4BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Jamia Darul Quran',
    'cami',
    53.5658291,
    -2.4406258,
    'Bridgeman Street, Bolton, BL3 6TH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makkah Masjid',
    'cami',
    53.5661207,
    -2.4286511,
    'Grecian Crescent, Bolton, BL3 6QU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz e Ahlebait',
    'cami',
    53.5681764,
    -2.4292055,
    'Fletcher Street, Bolton, BL3 6NG',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Falah',
    'cami',
    53.5740455,
    -2.4417264,
    'Salisbury Street, Bolton, BL3 5DR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ilford Central Mosque',
    'cami',
    51.5563499,
    0.0748956,
    'Albert Road, Ilford, IG1 1HW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Usman',
    'cami',
    53.5939323,
    -2.4360954,
    'Astley Street, Bolton, BL1 8EY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Portsmouth Muslim Academy',
    'cami',
    50.8068076,
    -1.0873212,
    'Old Commercial Road, Portsmouth',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid St Ives Mosque',
    'cami',
    52.3251021,
    -0.0686199,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Huda',
    'cami',
    53.7556816,
    -2.6975999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Alavia Bolton',
    'cami',
    53.5750996,
    -2.4160608,
    'Bromwich Street, Bolton, BL2 1JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taiyabah Masjid',
    'cami',
    53.5920804,
    -2.4314087,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinatul-Uloom Al-Islamiyah',
    'cami',
    52.3626005,
    -2.2127864,
    'Wyre Forest, DY10 4BH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lenton Muslim Centre',
    'cami',
    52.9544575,
    -1.1718025,
    'Rothesay Avenue, Nottingham, NG7 1PW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tawhid',
    'cami',
    51.5531282,
    -0.004632,
    'High Road Leyton, London, E15 2BP',
    'Masjid and Madrasah al-Tawhid Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Baseera Bristol Centre',
    'cami',
    51.4591566,
    -2.5798583,
    'Wade Street, Bristol, BS2 9DR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Aqsa',
    'cami',
    53.5757954,
    -2.451295,
    'Gilnow Road, Bolton, BL1 4LL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leicester Mosque',
    'cami',
    52.6293244,
    -1.1126164,
    'Sutherland Street, Leicester, LE2 1DS',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Usmani',
    'cami',
    52.633918,
    -1.0992347,
    'Saint Saviour''s Road, Leicester, LE5 4HJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-Al-Husayn Mosque',
    'cami',
    52.6409177,
    -1.0997212,
    NULL,
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid-e-Bilal',
    'cami',
    52.6267841,
    -1.1017697,
    'Evington Valley Road, Leicester, LE5 5LJ',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ismaili Jamaat Khana',
    'cami',
    52.6591212,
    -1.0780242,
    'Waterside Road, Leicester, LE5 1TL',
    'shia',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid al Ameen',
    'cami',
    52.5996616,
    -1.0845787,
    'Sandhurst Street, Oadby, LE2 5AR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid at-Taqwa Islamic Education Centre',
    'cami',
    52.6418743,
    -1.1053957,
    'Harewood Street, Leicester, LE5 3LX',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taybah Islamic Centre',
    'cami',
    52.6317248,
    -1.0945509,
    'Saint Saviour''s Road, Leicester, LE5 4HJ',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hafsah Islamic Centre',
    'cami',
    52.6383891,
    -1.1057035,
    'Sylvan Avenue, Leicester, LE5 3SN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Baitul Mukaram',
    'cami',
    52.6287277,
    -1.1135503,
    'St Stephens Road, Leicester, LE2 1DQ',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrasa-e-Anjuman-e-Ghousia Mosque',
    'cami',
    52.6304257,
    -1.117372,
    'Evington Street, Leicester, LE2 0SA',
    'sufi',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Majid-e-Hamza Mosque',
    'cami',
    53.7175874,
    -2.0947849,
    'Eagle Street, Todmorden',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressah-e-Rahimiyah',
    'cami',
    52.6349908,
    -1.1094571,
    'Mere Road, Leicester, LE5 5GQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Sufiya',
    'cami',
    52.6289546,
    -1.1182715,
    'Highfield Street, Leicester, LE2 1AD',
    'sufi',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Peace Centre',
    'cami',
    52.6382189,
    -1.0567746,
    'Thurncourt Road, Leicester, LE5 2NG',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Majles-e-Dawat Ul Haq',
    'cami',
    52.6301155,
    -1.1108214,
    'Earl Howe Street, Leicester, LE2 0DQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Es Salam',
    'cami',
    52.6282239,
    -1.1169963,
    'Upper Tichborne Street, Leicester, LE2 1GL',
    'sunni',
    true,
    true,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Bayaan Arabic Foundation',
    'cami',
    52.6551749,
    -1.1255395,
    'Ross Walk, Leicester, LE4 5HH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Mu''adh ibn Jabal',
    'cami',
    52.6329925,
    -1.0720575,
    'Gamel Road, Leicester, LE5 6TB',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Markfield Mosque',
    'cami',
    52.6774585,
    -1.2724728,
    'Ratby Lane, Coalville, LE67 9SY',
    'sunni',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hamidiye Camii',
    'cami',
    52.6359222,
    -1.1409847,
    'Great Central Street, Leicester, LE1 4JT',
    'sufi',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ibn Uthaymeen',
    'cami',
    52.639036,
    -1.1212795,
    'Madras Road, Leicester, LE1 2LT',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noor ul Islam',
    'cami',
    52.6316998,
    -1.099369,
    'Linden Street, Leicester, LE5 5EE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'UKIM - Leicester Islamic Centre',
    'cami',
    52.6314726,
    -1.1042688,
    'Gwendolen Road, Leicester, LE5 5FL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darus Salam Mosque',
    'cami',
    52.6271452,
    -1.1052977,
    'Kedleston Road, Leicester, LE5 5HW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Anjuman-e-Saifee',
    'cami',
    52.6043616,
    -1.112973,
    'Overdale Road, Leicester, LE2 3YH',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Salaam',
    'cami',
    53.6032915,
    -2.4335336,
    'Ramsay Street, Bolton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Blackpool Central Mosque',
    'cami',
    53.8083489,
    -3.0449865,
    'Revoe Street, Blackpool, FY1 5HN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Masjid Rizvia',
    'cami',
    52.7969746,
    -1.6436496,
    'Uxbridge Street, Burton-on-Trent, DE14 3LA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Birr Community Centre and Mosque',
    'cami',
    51.3878047,
    1.3832647,
    'Union Crescent, Margate, CT9 1NR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jame Masjid',
    'cami',
    53.7030731,
    -1.6309873,
    'Henry Street, Batley, WF17 6JJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jumma Masjid',
    'cami',
    53.7012642,
    -1.6305675,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Abbassiya',
    'cami',
    53.8012516,
    -1.7184537,
    'Moor Park Drive, Bradford, BD3 7ER',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ilaahi Masjid',
    'cami',
    53.6981395,
    -1.6379512,
    'Hope Street, Dewsbury, WF13 2BT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faisal al-Madinah',
    'cami',
    51.539379,
    0.7006434,
    'Milton Road, Westcliff-on-Sea, SS0 7JP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zaouia islamiya ''alaouia',
    'cami',
    52.4589595,
    -1.9010369,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mawlawi Kurdish Cultural Centre',
    'cami',
    53.4608654,
    -2.2518221,
    'Parsonage Street, Manchester, M15 5WD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khidmah Academy',
    'cami',
    51.5408482,
    0.010752,
    'Vicarage Lane, London, E15 4HG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Salaam Community Centre and Masjid',
    'cami',
    53.457692,
    -2.2517327,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque Al-Noor',
    'cami',
    52.9776263,
    -0.0302034,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stornoway Masjid',
    'cami',
    58.207937,
    -6.3840059,
    'Sràid Sheumais, Stornoway, HS1 2QS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'South Essex Islamic Community Centre',
    'cami',
    51.5603908,
    0.4872212,
    'High Road, Basildon, SS16 4ND',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hazrat Bilal Centre',
    'cami',
    51.4690152,
    -2.5776299,
    'Sevier Street, Bristol, BS2 9QX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jaffria Islamic Centre',
    'cami',
    53.4578087,
    -2.23369,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mid Sussex Islamic Centre And Masjid',
    'cami',
    50.9917181,
    -0.0996273,
    'Wivelsfield Road, Haywards Heath, RH16 4EF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ghousia',
    'cami',
    52.5854166,
    -0.2515036,
    'Gladstone Street, Peterborough, PE1 2BY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jesus Son of Mary Community Centre',
    'cami',
    51.644122,
    -0.3610192,
    'High Street, Bushey, WD23 3DH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Khadijah and Islamic Centre',
    'cami',
    52.5834485,
    -0.2480617,
    'Cromwell Road, Peterborough, PE1 2HP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Husaini Islamic Centre',
    'cami',
    52.5753694,
    -0.2282559,
    'Burton Street, Peterborough, PE1 5HD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sheffield Grand Mosque',
    'cami',
    53.4046055,
    -1.4409628,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kingswood Masjid',
    'cami',
    51.4618237,
    -2.5074679,
    'Moravian Road, Bristol, BS15 8LR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-E-Madinah',
    'cami',
    51.4768764,
    -2.538337,
    'Fishponds Road, Bristol',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressa Islamia Mosque',
    'cami',
    53.7839034,
    -2.4066493,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ghousia Masjid mosque',
    'cami',
    53.7856942,
    -2.3986293,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abu Bakar',
    'cami',
    51.4529364,
    0.1773557,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahporan',
    'cami',
    51.4951505,
    -2.5742769,
    'Filton Avenue, Bristol, BS7 0BE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Felicity House',
    'cami',
    53.4009954,
    -2.9225601,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Raheem',
    'cami',
    52.5777401,
    -0.2472668,
    'Cromwell Road, Peterborough, PE1 2EA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Fountain of Knowledge Islamic Centre',
    'cami',
    52.4526751,
    -1.8781306,
    'Ladypool Road, Birmingham, B12 8JZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lansbury Mosque',
    'cami',
    51.5152381,
    -0.0181663,
    'Alton Street, London, E14 6BZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Mahdi Centre',
    'cami',
    50.8763316,
    -1.2177505,
    'Fontley Road, Fareham, PO15 6QR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Jamia Masjid',
    'cami',
    53.8170892,
    -1.5200378,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dunfermline Islamic Centre',
    'cami',
    56.0699809,
    -3.4356136,
    'Woodmill Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Handsworth Mosque & IslamicCentre',
    'cami',
    52.503993,
    -1.944119,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ahmadiyya Muslim Community Centre',
    'cami',
    53.6016435,
    -2.5493393,
    'Jones Street, Bolton, BL6 7AJ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dudley Central Mosque',
    'cami',
    52.5124071,
    -2.078768,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cambridge Central Mosque',
    'cami',
    52.1973434,
    0.1523765,
    'Mill Road, Cambridge, CB1 3DF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chingford Islamic and Cultural Centre',
    'cami',
    51.6110437,
    -0.017644,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lea Bridge Road Mosque',
    'cami',
    51.5718798,
    -0.0215229,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Birr',
    'cami',
    51.5633253,
    -0.0170649,
    'Church Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leyton Jamia Masjid',
    'cami',
    51.561156,
    -0.0096866,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Ul-Isra',
    'cami',
    51.4895769,
    -3.1753031,
    'Wyeverne Road, Cardiff, CF24 4BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid At-Tawheed',
    'cami',
    51.4702878,
    -3.1854425,
    'Penarth Road, Cardiff',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Abubakr',
    'cami',
    51.4684199,
    -3.1818464,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Mosque',
    'cami',
    51.4959693,
    -3.1757295,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Association of Salisbury',
    'cami',
    51.0725015,
    -1.8063692,
    'Wilton Road, Salisbury, SP2 7ED',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Farooq-e-Azam Mosque & Islamic Centre',
    'cami',
    54.5596792,
    -1.3184707,
    'Bowesfield Lane, Stockton-on-Tees, TS18 3EB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Masjid Al-Haramain',
    'cami',
    53.7109919,
    -1.6744643,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Mosque',
    'cami',
    51.4931244,
    -3.173653,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Thornaby Mosque',
    'cami',
    54.5529201,
    -1.2987553,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Menzil Trust Masjid',
    'cami',
    51.5661219,
    -0.009912,
    'High Road Leyton, London, E10 6RL',
    'The Menzil Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cann Hall Masjid',
    'cami',
    51.5551558,
    0.0112749,
    'Cann Hall Road, London, E11 3NJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Qur''an Academy',
    'cami',
    51.4732902,
    -2.5308963,
    'Abingdon Road, Bristol, BS16 3NY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mukarram Jame Masjid',
    'cami',
    53.3655576,
    -1.4734412,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Muhammed',
    'cami',
    52.6639143,
    -1.0895369,
    'Claymill Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Aberdeen Mosque & Islamic Centre',
    'cami',
    57.1503979,
    -2.0915659,
    'Frederick Street, Aberdeen, AB24 5HY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid E Ghosia',
    'cami',
    53.5651375,
    -2.4438347,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bath Islamic Centre and Mosque',
    'cami',
    51.3800009,
    -2.3573317,
    'Pierrepont Street, BA1 1LA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Uthman',
    'cami',
    51.3979884,
    -0.073134,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza-E-Mustafa Mosque',
    'cami',
    53.4153214,
    -1.3247126,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrasatul Imam Muhammad Zakariya',
    'cami',
    53.5929115,
    -2.4291565,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ashton Central Mosque',
    'cami',
    53.4925181,
    -2.0866443,
    'Hillgate Street, OL6 9JA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Khalil',
    'cami',
    51.5229652,
    -0.1940301,
    'Sutherland Avenue',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Haleem Mosque',
    'cami',
    53.8640087,
    -1.9063713,
    'Longcroft, Keighley, BD21 5AL',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sarajia Islamic Center',
    'cami',
    55.9006658,
    -3.6421959,
    'Whitburn Road, Bathgate',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Reading Islamic Centre Hanfi Maslic',
    'cami',
    51.4537087,
    -0.9479928,
    'Amity Road, Reading',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ashrafia Mosque',
    'cami',
    53.5739643,
    -2.4432662,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Manarat Foundation',
    'cami',
    52.4539633,
    -1.7922472,
    'New Coventry Road, Birmingham, B26 3DX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dawat E Islami Shaftesbury',
    'cami',
    51.5941684,
    -2.9961529,
    'Shaftesbury Street, Newport, NP20 5FA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjide Moorul',
    'cami',
    53.7442933,
    -2.4669891,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinah Masjid',
    'cami',
    53.5814869,
    -2.4349218,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Nimra',
    'cami',
    53.8408429,
    -2.2064814,
    'BankHouse Road, Nelson',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darus Salam Masjid & Bangladeshi Islamic Centre',
    'cami',
    52.5696608,
    -2.0211194,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gausia Madrassah',
    'cami',
    53.8373621,
    -2.2056843,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dundee Central Mosque',
    'cami',
    56.4618101,
    -2.9808464,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Labbayak Ya RasoolAllah Masjid',
    'cami',
    53.832488,
    -2.208933,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ahl Al-Sunnah',
    'cami',
    53.5937763,
    -2.4425397,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'madinah Community Centre',
    'cami',
    52.5364796,
    -1.3775223,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Quba Education Centre',
    'cami',
    53.3942647,
    -1.4269683,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bait-Ur-Rahman Mosque',
    'cami',
    55.8660139,
    -4.2900324,
    'Haugh Road, Glasgow, G3 8TR',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina masjid',
    'cami',
    53.7094051,
    -1.6364201,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressa Islamiyah',
    'cami',
    53.7101247,
    -1.6362401,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Anwara al Madina',
    'cami',
    52.4931287,
    -1.8282798,
    'Washwood Heath Road, Birmingham, B8 2JF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tayyabah',
    'cami',
    52.4930954,
    -1.8271074,
    'Washwood Heath Road, Birmingham, B8 2JG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tooba',
    'cami',
    53.5288285,
    -2.6456494,
    'Clifton Street, Wigan, WN3 5HN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Ghausia Masjid',
    'cami',
    53.8390484,
    -2.2159737,
    'Pendle Street, Nelson',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamie Mosque & Islamic Society of Darlington',
    'cami',
    54.5297414,
    -1.5565794,
    'North Lodge Terrace, Darlington, DL3 6LY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East Renfrewshire Islamic Centre',
    'cami',
    55.7696895,
    -4.3366499,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Universal Association',
    'cami',
    51.5089858,
    -0.2119049,
    'Penzance Place',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Turners Road Masjid',
    'cami',
    51.5166421,
    -0.0315605,
    'Bangla Close, London, E3 4YD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    53.8005117,
    -1.8224725,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Mosque',
    'cami',
    52.5832348,
    -1.9704539,
    'WS1 2JN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mansfield Jamee Masjid',
    'cami',
    53.1442523,
    -1.1891425,
    'Goodacre Street, Mansfield, NG18 2HJ',
    'Mansfield & Ashfield Bangladeshi Association',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Falah Community Centre',
    'cami',
    51.9029665,
    -0.4626075,
    'Compton Avenue, Luton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Maktoum Mosque',
    'cami',
    56.4595382,
    -2.9863931,
    'Wilkie''s Lane, Dundee, DD1 5HB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Medina Mosque',
    'cami',
    51.4814093,
    -0.6339728,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tantallon Road Mosque',
    'cami',
    55.825653,
    -4.2825976,
    'Tantallon Road, Glasgow',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Valide Sultan Mosque',
    'cami',
    51.5573068,
    -0.0838414,
    'Clissold Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lewisham Islamic Centre',
    'cami',
    51.45179,
    -0.0162928,
    'Lewisham High Street, London, SE13 6NZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    51.5811335,
    -2.9917305,
    'Commercial Road, Newport, NP20 2PP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wrexham Islamic Cultural Centre',
    'cami',
    53.0481649,
    -2.9973032,
    'Grosvenor Road, Wrexham',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dagenham Aishah Islamic Centre',
    'cami',
    51.5673578,
    0.1437002,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Tauhid Mosque',
    'cami',
    53.6623972,
    -1.7855754,
    'Spaines Road, Huddersfield, HD2 2QA',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dawatal Islam Mosque',
    'cami',
    53.7135371,
    -1.6222729,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Minhaj Ul Quran Centre',
    'cami',
    51.5460428,
    0.0248432,
    'Romford Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Welfare House',
    'cami',
    53.3794422,
    -1.4965058,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bethel Chapel',
    'cami',
    51.6205271,
    -3.9900876,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hyderi Islamic Centre',
    'cami',
    51.420161,
    -0.136545,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Ali Reza Islamic Centre',
    'cami',
    51.738157,
    0.4765984,
    'Regina Road, Chelmsford',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Aman Mosque',
    'cami',
    51.5250755,
    -0.0527433,
    'Braintree Street, London, E2 0FT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan -e-Mustafa Educational Centre',
    'cami',
    52.4562063,
    -1.8581574,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Aqsa Walsall Masjid',
    'cami',
    52.5929635,
    -1.9850104,
    'Stafford Street, Walsall, WS2 8EA',
    'Karimia Association Limited',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Warrington Islamic Association',
    'cami',
    53.3977953,
    -2.6126734,
    'Lockton Lane, Warrington, WA5 0BF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Community Mosque',
    'cami',
    50.9572768,
    -0.1380717,
    'Lower Church Road, Burgess Hill, RH15 9AB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre of Plymouth and Cornwall',
    'cami',
    50.3770354,
    -4.1411803,
    'North Road East, Plymouth, PL4 6AW',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oldham Central Masjid and Islamic Centre',
    'cami',
    53.5450371,
    -2.1278547,
    'Featherstall Road North, Oldham, OL9 6BX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Syed Shah Mustafa Jame Masjid',
    'cami',
    57.1432152,
    -2.1009406,
    'Crown Terrace, Aberdeen, AB11 6HD',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Alhikmah & Community Centre',
    'cami',
    57.1540968,
    -2.0973973,
    'Nelson Street, Aberdeen, AB24 5ER',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Anwar-Ul-Uloom',
    'cami',
    52.4897186,
    -1.9580027,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shepherds Bush Mosque and Muslim Cultural Centre',
    'cami',
    51.5065947,
    -0.2313589,
    'Uxbridge Road, London, W12 7LJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamiat Ahl-alHadith',
    'cami',
    51.4538909,
    -0.9493228,
    'Cumberland Road, Reading, RG1 3LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Watford Jamia Masjid',
    'cami',
    51.652458,
    -0.3951155,
    'Cambridge Rd, Watford, WD18 0GJ',
    'http://www.watfordmosque.org.uk',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Eccles and Salford Islamic Society',
    'cami',
    53.4830267,
    -2.3452464,
    'Liverpool Road, Eccles',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Mosque and Islamic Centre',
    'cami',
    53.4510837,
    -2.2262029,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Mushkil Kusha',
    'cami',
    51.9014277,
    -0.4671738,
    'High Street, Luton, LU4 9JZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Youth Foundation (MYF)',
    'cami',
    53.4839831,
    -2.2374421,
    'Turner Street, Manchester, M4 1DY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madni Mosque',
    'cami',
    51.495845,
    -3.1717432,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Mosque',
    'cami',
    51.5522455,
    0.0528447,
    'Romford Road, London, E12 6BT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-e-Madinah',
    'cami',
    51.4950065,
    -0.541882,
    'Cheviot Road, Slough, SL3 8LA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid us Sunnah',
    'cami',
    51.4782978,
    -0.4069979,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hockwell Ring Masjid',
    'cami',
    51.9060397,
    -0.468829,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taunton and Somerset Islamic Centre',
    'cami',
    51.0147227,
    -3.1070971,
    'Tower Lane, Taunton, TA1 4AR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Mustafa',
    'cami',
    53.8356087,
    -2.2067365,
    'Smith Street, Nelson, BB9 9QX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muhammadi Masjid',
    'cami',
    53.8365148,
    -2.2077393,
    'Netherfield Road, Nelson, BB9 9QL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Huda - Cultural Centre and Mosque',
    'cami',
    51.5211147,
    -0.0512609,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjidul Falah',
    'cami',
    51.9046759,
    -2.0834697,
    'High Street, Cheltenham, GL50 3JA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Rabbaniah Islamic Cultural Centre',
    'cami',
    51.4747818,
    -3.1868853,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Somers Town Islamic Cultural and Education Centre',
    'cami',
    51.5296019,
    -0.1306907,
    'Churchway, London, NW1 1LT',
    'Somers Town Mosque Ltd',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Worthing Masjid',
    'cami',
    50.819278,
    -0.369994,
    'Ivy Arch Road, Worthing, BN14 8BX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre Aberdare',
    'cami',
    51.7212125,
    -3.4476129,
    'Phillip Street',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Bilal',
    'cami',
    56.4702701,
    -2.9609775,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tahir Mosque',
    'cami',
    51.4339062,
    0.0099213,
    'Verdant Lane, London, SE6 1TP',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Muslim community Centre & Mosque',
    'cami',
    51.5442365,
    0.0318474,
    'Green Street, London, E7 8JG',
    'Newham North Islamic Association',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madressa Taleem-ul-Quran and Qurtaba Masjid',
    'cami',
    53.5415941,
    -2.0912582,
    'Lees Road, Oldham, OL4 1LS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Neeli Mosque',
    'cami',
    53.6086626,
    -2.1524488,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East End Islamic Centre',
    'cami',
    51.537289,
    0.0293887,
    'Plashet Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East End Islamic Centre (Maktab Building)',
    'cami',
    51.5373435,
    0.0297041,
    'Lucas Avenue',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mubarak Mosque',
    'cami',
    51.1907545,
    -0.7510229,
    'Sheephatch Lane, Tilford, GU10 2AQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Masjid',
    'cami',
    53.4503292,
    -2.2015999,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Masjid',
    'cami',
    53.450522,
    -2.2016766,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newbury Park Masjid',
    'cami',
    51.5813244,
    0.0913752,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imamia Mission',
    'cami',
    51.57818,
    0.0879869,
    'Perrymans Farm Road, Ilford, IG2 7LX',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Gulshani Baghdad',
    'cami',
    52.1322479,
    -0.4850555,
    'Westbourne Road, Bedford, MK40 4LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Adur Muslim Centre',
    'cami',
    50.8332679,
    -0.2725022,
    'Brunswick Road, Shoreham-by-Sea',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shrewsbury Muslim Centre',
    'cami',
    52.7041521,
    -2.7310591,
    'Preston Street, Shrewsbury',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hounslow Muslim Centre',
    'cami',
    51.4694219,
    -0.357077,
    'Hanworth Road, Hounslow, TW3 1UA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Eastbourne Mosque',
    'cami',
    50.7727104,
    0.2868849,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Huda Islamic Centre',
    'cami',
    53.3754397,
    -1.4832769,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Mosque',
    'cami',
    53.093942,
    -2.4430946,
    'Electricity Street, Crewe, CW2 7EW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Brixton Mosque',
    'cami',
    51.465326,
    -0.1127435,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gillani Noor Masjid',
    'cami',
    52.980576,
    -2.1214134,
    'Chaplin Road, Stoke-on-Trent, ST3 4QS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Idara-e-Jaaferiya',
    'cami',
    51.4251575,
    -0.1614275,
    'Church Lane, London, SW17 9PP',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Acton Mosque',
    'cami',
    51.5066307,
    -0.2703151,
    'Oldham Terrace, London, W3 6LS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Room',
    'cami',
    52.2010643,
    0.1102393,
    'Cambridge, CB3 9DA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjahal Mosque and Islamic Centre Southampton',
    'cami',
    50.9104108,
    -1.3992335,
    'Oxford Avenue, Southampton, SO14 0GF',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Alhidaya Croydon',
    'cami',
    51.3934428,
    -0.1131159,
    'Brigstock Road, Thornton Heath, CR7 7JP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Rasheed',
    'cami',
    53.7441647,
    -2.5043797,
    'Pleasington Street, Blackburn, BB2 1UF',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia-Tul-Muntazir Manchester',
    'cami',
    53.49873,
    -2.2421884,
    'Sherborne Street, Manchester, M8 8ND',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamea Masjid',
    'cami',
    53.7551883,
    -2.6918043,
    'Clarendon Street, Preston, PR1 3YN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Greenwich Islamic Centre',
    'cami',
    51.4903201,
    0.0826715,
    'Plumstead Road, London, SE18 7DW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Plaistow Jamia Islamia',
    'cami',
    51.5280879,
    0.0238186,
    'Balaam Street',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Hamd',
    'cami',
    53.7925179,
    -1.7291485,
    'Leeds Road, Bradford, BD3 9LY',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Afiyat Mosque',
    'cami',
    53.3876792,
    -1.4509589,
    'Sussex Street, Sheffield, S4 7YQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Atta Mosque',
    'cami',
    53.7058046,
    -1.6534571,
    'Garnett Street, Dewsbury, WF13 4AT',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Aman Mosque',
    'cami',
    51.5233713,
    -0.4660872,
    'Royal Lane, Uxbridge, UB8 3QU',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ikram Mosque',
    'cami',
    52.6145133,
    -1.1192869,
    'Avenue Road Extension, Leicester, LE2 3EQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ehsan',
    'cami',
    51.391081,
    -0.1651216,
    'Willow Lane, Mitcham, CR4 4TS',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ehsan Mosque',
    'cami',
    52.2885878,
    -1.5412522,
    'Riverside, Leamington Spa, CV32 5AH',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Wahid Mosque',
    'cami',
    51.4307398,
    -0.4028501,
    'Raleigh Way, Feltham, TW13 7NX',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Ahad Mosque',
    'cami',
    51.5338619,
    0.0390749,
    'Tudor Road, London, E6 1DR',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oxford Mosque Society',
    'cami',
    51.7515453,
    -1.2403983,
    'Bath Street, Oxford, OX4 1AY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chatham Mosque',
    'cami',
    51.3783884,
    0.5357223,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Swindon Ismaili Jamatkhana',
    'cami',
    51.5554252,
    -1.7845253,
    'Savernake Street, Swindon, SN1 3LZ',
    'ismaili',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al Habib',
    'cami',
    51.5203207,
    0.0178686,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-al-Falah',
    'cami',
    51.5251037,
    0.0284297,
    'Barking Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'London Iqra Academy',
    'cami',
    51.5236863,
    0.0217085,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imam Ali Centre',
    'cami',
    51.3789084,
    0.5063272,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Ghausia',
    'cami',
    53.4081599,
    -1.4495841,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Battersea Mosque',
    'cami',
    51.4676248,
    -0.1703216,
    'Falcon Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gulzare Medina Masjid Islamic Welfare Trust',
    'cami',
    52.2582958,
    -0.8493383,
    'Collingdale Road, Northampton, NN3 2TS',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ibrahim',
    'cami',
    51.5303171,
    0.0361561,
    'Barking Road, London, E13 9EU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Palmers Green Mosque',
    'cami',
    51.615298,
    -0.1047519,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque Noor-E-Islam',
    'cami',
    53.5344081,
    -2.1321695,
    'Manchester Road, Oldham, OL9 7AP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Werneth Jamia Mosque',
    'cami',
    53.5326826,
    -2.1331082,
    'Manchester Road, Oldham, OL9 7AX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-e-Owais-e-Qarni',
    'cami',
    51.5652523,
    0.0561185,
    'Belgrave Road, Ilford',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Ummah Goresbrook',
    'cami',
    51.5342509,
    0.1135007,
    'Maplestead Road, Dagenham',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Haverhill Mosque',
    'cami',
    52.0822847,
    0.4316058,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Newham',
    'cami',
    51.5416491,
    0.0509392,
    'High Street North',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Quds Mosque',
    'cami',
    50.834413,
    -0.1505069,
    'Dyke Road',
    'Brighton Mosque & Muslim Community Centre',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Telford Central Mosque',
    'cami',
    52.6993624,
    -2.5114827,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Masjid al-Nur',
    'cami',
    53.4477972,
    -2.1925184,
    'Belvoir Avenue, M19 3AP',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Raza Foundation',
    'cami',
    53.4486642,
    -2.1930179,
    'Park Grove, Manchester, M19 3AQ',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Broughty Ferry Mosque',
    'cami',
    56.4715717,
    -2.904069,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hendon Jami Masjid',
    'cami',
    54.9020926,
    -1.3768614,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mahmood Mosque',
    'cami',
    56.472475,
    -2.9689183,
    'Dens Road, Dundee, DD3 7HY',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Heathrow Jamia Masjid',
    'cami',
    51.4811809,
    -0.4154874,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Integration Community Centre',
    'cami',
    51.462731,
    -0.3896985,
    'Staines Road, Hounslow, TW4 5DP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    51.5094998,
    -0.4743603,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Falah Islamic Education Centre',
    'cami',
    51.5127263,
    -0.4754278,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Uxbridge Muslim Community Centre',
    'cami',
    51.5378994,
    -0.4839169,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Uxbridge Eyup Sultan Masjid',
    'cami',
    51.547867,
    -0.4803282,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ashford & Staines Community Centre',
    'cami',
    51.4470205,
    -0.4583592,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Feltham Hira Centre',
    'cami',
    51.4539735,
    -0.4041653,
    'Hounslow Road, Feltham, TW14 0AX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oldham Mosque & Islamic Centre',
    'cami',
    53.5426828,
    -2.1263013,
    'Middleton Road, Oldham, OL9 6BG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Khasra Masjid',
    'cami',
    53.5460753,
    -2.1219811,
    'Chadderton Way, Oldham, OL9 6DP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Syeda Fatima Zahra Centre',
    'cami',
    52.5876001,
    -1.9916416,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Samad',
    'cami',
    53.6509377,
    -1.7797721,
    'Lower Fitzwilliam Street, Huddersfield, HD1 6AS',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bait-ul-Hadi',
    'cami',
    51.6423369,
    -0.4189359,
    NULL,
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz Us-Sunnah',
    'cami',
    51.5390561,
    -0.2951635,
    'Sunleigh Road, Wembley, HA0 4LY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan-E-Jumu''ah Masjid',
    'cami',
    51.4644,
    -0.3690678,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Islamic Mission',
    'cami',
    51.4648088,
    -0.369448,
    'Hibernia Road, Hounslow, TW3 3RN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Grimsby Islamic Centre',
    'cami',
    53.5540836,
    -0.0800243,
    'Weelsby Road, Grimsby, DN32 0PY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ezzeitouna',
    'cami',
    51.514035,
    -0.2498237,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Rahman Mosque',
    'cami',
    53.3932012,
    -1.4578448,
    'Gower Street, Sheffield, S4 7JD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Mohammed',
    'cami',
    53.3910078,
    -1.4581492,
    'Sorby Street, Sheffield, S4 7LJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kingston Mosque',
    'cami',
    51.4160215,
    -0.2978979,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Islamia Ghousia Masjid',
    'cami',
    53.5322611,
    -2.1356425,
    'Warwick Street, Oldham, OL9 7EB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hussainiat Al Zahra',
    'cami',
    54.575377,
    -1.2426391,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Noorani Masjid',
    'cami',
    53.5463249,
    -2.1226329,
    'Chadderton Way, Oldham, OL9 6DP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa Taleemul Islam Markazi Masjid',
    'cami',
    53.532538,
    -2.1389447,
    'Suffolk Street, Oldham, OL9 7DJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bury Park Masjid',
    'cami',
    51.8847654,
    -0.4260786,
    'Bury Park Road, Luton',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Daarul Huda',
    'cami',
    52.1249213,
    -0.4713739,
    'Ampthill Road, Bedford, MK42 9HP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'St Michaels Mount (inman Trust)',
    'cami',
    53.4268946,
    -2.7312876,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Prayer Hall',
    'cami',
    52.3806369,
    -1.561382,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baital Ma''mur Jami Masjid',
    'cami',
    52.2410178,
    -0.9179048,
    'Argyle Street, NN5 5LJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abu Bakar Masjid',
    'cami',
    53.7934385,
    -1.7283644,
    'Steadman Terrace, Bradford, BD3 9NB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Jamia Mosque',
    'cami',
    53.5420861,
    -2.0883933,
    'Ronald Street, Oldham, OL4 1NE',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid',
    'cami',
    51.742153,
    -1.23699,
    'Stanley Road, OX4 1QZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Peterborough Jamatkhana',
    'cami',
    52.5778914,
    -0.2456837,
    'Craig Street, Peterborough',
    'ismaili',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Mosque',
    'cami',
    52.5230576,
    -2.058029,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Shah Jalal',
    'cami',
    52.5256323,
    -2.0543167,
    'Wellington Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid At-Taqwa',
    'cami',
    52.6418557,
    -1.1047678,
    'Humberstone Road, Leicester, LE5 3DF',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faiz e Raza',
    'cami',
    52.6417346,
    -1.1077302,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizen E Islam',
    'cami',
    52.4311266,
    -1.5035084,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitus Shakoor',
    'cami',
    51.74507,
    -1.2293492,
    'Cowley Road, Oxford, OX4 1XQ',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mosque of the Embassy of Qatar',
    'cami',
    51.4924531,
    -0.1876873,
    'Collingham Gardens',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Saboor Mosque',
    'cami',
    52.8060948,
    -1.6069776,
    'High Bank Road, Burton-on-Trent, DE15 0HU',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jami Masjie Islam Centre',
    'cami',
    52.5527685,
    -2.0185448,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wednesbury Central Mosque',
    'cami',
    52.5532891,
    -2.0174374,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Hayat Un Nabi',
    'cami',
    53.533997,
    -2.1277568,
    'Werneth Hall Road, Oldham, OL8 1QZ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Omar Mukhtar',
    'cami',
    53.3956979,
    -2.9579343,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Baseer',
    'cami',
    53.4849003,
    -1.188553,
    'Edlington Lane, Doncaster, DN12 1BS',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Faizan E Islam Centre',
    'cami',
    53.4559193,
    -2.2835393,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tooting Islamic Centre',
    'cami',
    51.4317002,
    -0.1626528,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ross Street Masjid',
    'cami',
    53.5361013,
    -2.12276,
    'Ross Street, Oldham, OL8 1UA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nagina Jamia Masjid',
    'cami',
    53.5356549,
    -2.1238917,
    'Werneth Hall Road, Oldham, OL8 4BB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sandwell Grand Masjid',
    'cami',
    52.5203981,
    -1.9996042,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Salahaddin Community Centre',
    'cami',
    52.5651488,
    -0.2494425,
    'Grove Street, Peterborough, PE2 9AG',
    'Bradost Charitable Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Masjid Gulzar-e-Habib Mosque',
    'cami',
    52.5214577,
    -2.0026576,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Adam',
    'cami',
    52.5969396,
    -1.0811465,
    'Wigston Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamay Masjid Muhammadia Saifia',
    'cami',
    53.5374413,
    -2.1041802,
    'Waterloo Street, Oldham, OL4 1EU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Jamay Masjid',
    'cami',
    53.5369709,
    -2.1030212,
    'Sickle Street, Oldham, OL4 1SB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Greengate Jamia Mosque',
    'cami',
    53.5390761,
    -2.1018846,
    'Greengate Street, Oldham, OL4 1DH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Mosque & Islamic Centre',
    'cami',
    53.5342362,
    -2.1212795,
    'Stuart Street, Oldham, OL8 1SD',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-Ul-Asqa and Islamic Centre',
    'cami',
    53.5324904,
    -2.1237381,
    'Windsor Road, Oldham, OL8 1RG',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hamad Bin Khalifa Islamic Centre',
    'cami',
    51.7122954,
    -5.0311413,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muhammadi Masjid',
    'cami',
    53.8033889,
    -1.7647004,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    53.8101563,
    -1.7763537,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muhammadi Masjid',
    'cami',
    53.8732242,
    -1.9087619,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Imam Yusuf Motala Academy',
    'cami',
    53.810246,
    -1.7325515,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid As-Sunnah',
    'cami',
    53.7811584,
    -1.7837658,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Turkish Community Centre',
    'cami',
    52.1972923,
    -2.2191995,
    'Worcester, WR1 1NQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jalalabad Muslim Association',
    'cami',
    52.1913175,
    -2.2127482,
    'Worcester, WR5 1BW',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kidderminster Madani Masjid',
    'cami',
    52.3919465,
    -2.2458973,
    'Wyre Forest, DY10 2ES',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hastings Mosque',
    'cami',
    50.8522177,
    0.5574806,
    'Mercatoria, TN38 0EB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Tayside Islamic Centre',
    'cami',
    56.4665148,
    -2.9658471,
    'Victoria Road, Dundee',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Netherton Islamic Trust Masjid',
    'cami',
    52.4955019,
    -2.0860544,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Arbroath Islamic Community Centre',
    'cami',
    56.5668682,
    -2.5794288,
    'Hayshead Road, Arbroath',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid E Abdullah ibn Mas''ud',
    'cami',
    52.6039378,
    -1.1398945,
    'Hallaton Street, Leicester, LE2 8QU',
    'Saffron Community Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mohl-Ul-Islam Siddiquia',
    'cami',
    53.5316037,
    -2.1147001,
    'Copster Hill Road, Oldham, OL8 1QB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oldham Madani Academy',
    'cami',
    53.5488542,
    -2.1266058,
    'Maygate, Oldham, OL9 6TR',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Ikhlas Centre',
    'cami',
    51.4880585,
    -3.1547532,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madina Islamic Educational and Cultural Centre',
    'cami',
    53.535932,
    -2.1007167,
    'Waterloo Street, Oldham, OL4 1ES',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madina Jamia Masjid',
    'cami',
    53.5361037,
    -2.1005195,
    'Waterloo Street, Oldham, OL4 1ES',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Masjid & Islamic Centre',
    'cami',
    53.5496006,
    -2.121817,
    'Stansfield Street, Oldham, OL1 2HA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stevenage Muslim Community Centre and Mosque',
    'cami',
    51.9159596,
    -0.1816636,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Haramain Mosque and Education Centre',
    'cami',
    52.1303149,
    -0.4673969,
    'Melbourne Street, Bedford, MK42 9AX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Mamur Academy',
    'cami',
    51.5284968,
    -0.0499998,
    'Roman Road, London, E2 0QN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Muslim Cultural Centre',
    'cami',
    51.4412642,
    0.3810061,
    'Albion Terrace, Gravesend, DA12 2SX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Nusratul Islam Masjid',
    'cami',
    53.5364402,
    -2.0982384,
    'Pitt Street, Oldham, OL4 1AL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Brentwood Mosque',
    'cami',
    51.6125884,
    0.299258,
    'Warley Hill, Brentwood, CM14 5HA',
    'muslim',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Maryam',
    'cami',
    54.5516213,
    -1.249208,
    'Green Lane, Middlesbrough, TS5 7RX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Al-Madina',
    'cami',
    54.5683004,
    -1.2310964,
    'Waterloo Road, Midlesbrough, TS1 3JB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Faridia',
    'cami',
    52.5682559,
    -2.1244156,
    'Wanderers Avenue, Wolverhampton, WV2 3HL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wapping Noorani Masjid & Cultural Centre',
    'cami',
    51.506173,
    -0.0565512,
    'Prusom Street, London, E1W 3RR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Azmat E Islam',
    'cami',
    53.5374257,
    -2.096724,
    'Retford Street, Oldham, OL4 1BL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinatul Ilm',
    'cami',
    53.5386961,
    -2.0965524,
    'Nugget Street, Oldham, OL4 1BN',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Abu-Bakr & Islamic Centre',
    'cami',
    53.6430078,
    -1.8071282,
    'Church Street',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Leeds Islamic Centre',
    'cami',
    53.8132335,
    -1.5254897,
    'Spencer Place, Leeds, LS7 4BR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamia Mosque',
    'cami',
    53.8040094,
    -1.7669474,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jam-E-Masjid-Bilal',
    'cami',
    53.6358478,
    -1.8025952,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The Green Room',
    'cami',
    53.8040001,
    -1.55311,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Khizra mosque',
    'cami',
    53.5054187,
    -2.2372419,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Mosque',
    'cami',
    53.5105547,
    -2.2431964,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wycombe Mosque',
    'cami',
    51.6334042,
    -0.7669462,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Room',
    'cami',
    50.9350389,
    -1.3979643,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Prayer Room',
    'cami',
    53.4025917,
    -2.9638314,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Limehouse Mosque',
    'cami',
    51.5101456,
    -0.0282755,
    'Stocks Place, London, E14 8AE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Masjiid',
    'cami',
    52.963045,
    -1.1700746,
    'A''court Street, Nottingham, NG7 5AH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bilal Masjid Trust (Greenford)',
    'cami',
    51.5504229,
    -0.3310905,
    'Horsenden Lane North',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madina Tul Quran',
    'cami',
    52.9995428,
    -2.1886081,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladesh Islamic Education Centre',
    'cami',
    51.7491161,
    -1.2411798,
    'Cowley Road, OX4 1HR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Prayer Room',
    'cami',
    54.6652322,
    -2.754161,
    'Middlegate, CA11 7PG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Brixton Hill Islamic Centre',
    'cami',
    51.4487467,
    -0.1240323,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Wycombe Islamic Society',
    'cami',
    51.6303575,
    -0.7362595,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darus-salam',
    'cami',
    53.4519437,
    -2.1965445,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Boston Mosque & Islamic Centre',
    'cami',
    52.9846688,
    -0.0187808,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamiat-ul-Muslimin',
    'cami',
    52.464953,
    -1.8507167,
    'Tennyson Road, Birmingham',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lincoln Green Mosque',
    'cami',
    53.8044817,
    -1.5282348,
    'Cherry Row, Leeds, LS9 7LY',
    'Lincoln Green Mosque & Education Centre Leeds',
    true,
    false,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chelmsford Mosque',
    'cami',
    51.7306481,
    0.4740415,
    'Moulsham Street, Chelmsford, CM2 0HU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Manchester Islamic Centre',
    'cami',
    53.499323,
    -2.1731363,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Peckham High Street Islamic Centre',
    'cami',
    51.4737541,
    -0.0677412,
    NULL,
    'African Ivorian Islamic Trust',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Furqan Mosque',
    'cami',
    55.8714691,
    -4.2718878,
    'Carrington Street, Glasgow, G4 9AJ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North Brixton Islamic Cultural Centre',
    'cami',
    51.4739674,
    -0.1130421,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'The UK Islamic Mission Southend Mosque',
    'cami',
    51.5466569,
    0.6998299,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Coventry Cross Mosque',
    'cami',
    51.5228703,
    -0.0146564,
    'Empson Street, London, E3 3LJ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Nehar Mosque & Education Centre',
    'cami',
    51.5326528,
    -0.1195678,
    'Caledonian Road, London, N1 9DN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid',
    'cami',
    52.9010573,
    -1.2772349,
    'Derby Road, Nottingham, NG10 4QP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gulzar e Madina',
    'cami',
    52.6341318,
    -1.1133074,
    'Melbourne Road, Leicester, LE2 0GU',
    'sufi',
    true,
    true,
    true,
    true,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Centre Upton Park',
    'cami',
    51.5338647,
    0.0245228,
    'Selwyn Road, London, E13 0PY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Karimia Masjid & Institute',
    'cami',
    52.97002,
    -1.1662228,
    'Berridge Road, Nottingham, NG7 6HR',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Spiritual Centre Maddrassa Naqshbandiyya Nawabiyya Aslamiyya Birmingham',
    'cami',
    52.4767037,
    -1.8572922,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Maktaba Tul Madina Dawat-E-Islami',
    'cami',
    52.47892,
    -1.8563214,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madani',
    'cami',
    52.6278525,
    -1.0987708,
    'Evington Valley Road, Leicester, LE5 5LL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Fatima Zahra',
    'cami',
    52.6266319,
    -1.1070179,
    'Osmaston Road, Leicester, LE5 5JL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Sultania',
    'cami',
    52.9511813,
    -1.1255024,
    'Thurgarton Street, Nottingham, NG2 4AG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markazi Jamia Masjid Riza Islamic Centre',
    'cami',
    53.6591761,
    -1.7862765,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid al Furqan',
    'cami',
    53.0597278,
    -2.2115441,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taqwah Mosque',
    'cami',
    50.9112572,
    -1.3872852,
    'Princes Court, Southampton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Room',
    'cami',
    52.9898272,
    -1.1559491,
    'Nottingham, NG5 1PB',
    NULL,
    true,
    false,
    true,
    false,
    true,
    true,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Room',
    'cami',
    52.9898143,
    -1.1560296,
    'Nottingham, NG5 1PB',
    NULL,
    true,
    true,
    false,
    true,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza Mosque',
    'cami',
    54.0454798,
    -2.8053063,
    'Blades Street, Lancaster, LA1 1TS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newcastle Tawheed Islamic Centre',
    'cami',
    54.970153,
    -1.6453997,
    'Bentinck Road, Newcastle upon Tyne, NE4 6UX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa-tul-Madina Aston',
    'cami',
    52.5090738,
    -1.890951,
    'Witton Road, Birmingham, B6 6NU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hazrath Shahjahal Jamie Masjid',
    'cami',
    51.9893484,
    -0.7216604,
    'Manor Road, Milton Keynes, MK2 2GT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makkah Masjid Mitcham',
    'cami',
    51.4074854,
    -0.1641168,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madina Mitcham Islamic Centre',
    'cami',
    51.416716,
    -0.151788,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Muzzamil Mosque',
    'cami',
    51.4302527,
    -0.1676225,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Al-Hidayah',
    'cami',
    53.7550858,
    -2.4806485,
    'Whalley Street, Blackburn, BB1 7NB',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid-al-Momineen',
    'cami',
    53.7573243,
    -2.4690479,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Minhaj-ul-Qur''an Central Mosque',
    'cami',
    53.4523886,
    -2.2580139,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Kettering Muslim Association',
    'cami',
    52.3885249,
    -0.7274642,
    'Headlands, Kettering, NN15 6AD',
    'Kettering Muslim Association',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Laud Worship Rooms',
    'cami',
    51.2792236,
    1.0900097,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Mevlana Rumi',
    'cami',
    51.6206823,
    -0.0623249,
    'Fore Street, London, N9 0NU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chesterfield Muslim Association',
    'cami',
    53.2397338,
    -1.4283669,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Oxford University Islamic Society Prayer Room',
    'cami',
    51.7589725,
    -1.2560206,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gatwick Muslim Centre',
    'cami',
    51.1732336,
    -0.1611853,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Northampton Central Mosque',
    'cami',
    52.2475787,
    -0.8770168,
    'Abington Avenue, Northampton, NN1 4PD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cranfield University Mosque',
    'cami',
    52.0743805,
    -0.6270766,
    'Wharley End, Cranfield',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid al Quba',
    'cami',
    52.6386906,
    -1.1216685,
    'Brunswick Street, Leicester, LE1 2LP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Salahuddin',
    'cami',
    52.6410439,
    -1.1270419,
    'Upper George Street, Leicester, LE1 3LQ',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Beaumont Leys Muslims',
    'cami',
    52.6615781,
    -1.1523813,
    'LE4 0SA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'World Muslim League (London office)',
    'cami',
    51.5194617,
    -0.1359108,
    'Goodge Street, London, W1T 4LU',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid e Sajedeen',
    'cami',
    53.7584123,
    -2.4677028,
    'Plane Tree Road, Blackburn, BB1 6LS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hackney Central Masjid',
    'cami',
    51.5443148,
    -0.0469229,
    'Well Street, London, E9 6RG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hoxton Islah',
    'cami',
    51.5294969,
    -0.0836774,
    'Pitfield Street, London, N1 6BT',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Education Centre',
    'cami',
    51.6378911,
    -0.7288836,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Cultural Centre Neasden',
    'cami',
    51.5595705,
    -0.2504888,
    'Neasden Lane, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'UKIM Iqra Centre Leeds',
    'cami',
    53.8357937,
    -1.549838,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Noor',
    'cami',
    52.9625403,
    -1.1798459,
    'Glentworth Road, Nottingham, NG7 5QA',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'South Bedford Islamic Centre',
    'cami',
    52.1238424,
    -0.4656208,
    'Elstow Road, Bedford, MK42 9NU',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Islamic Prayer Room',
    'cami',
    51.2430107,
    -0.5887526,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid Usman-e-Ghani',
    'cami',
    54.5579994,
    -1.319505,
    'Northcote Street, Stockton-on-Tees, TS18 3JQ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madrassa At Tawhad',
    'cami',
    52.470936,
    -1.8456441,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Central Jamme Mosque (Reading)',
    'cami',
    51.4542594,
    -0.9815589,
    'Waylen Street, Reading, RG1 7UP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Sultan Bahu Centre',
    'cami',
    52.4920688,
    -1.8227045,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madani',
    'cami',
    52.6399959,
    -1.1203802,
    'Arnold Street',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Arqam',
    'cami',
    52.6483645,
    -1.0813836,
    'Thurmaston Lane, LE5 0TE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'DMU Prayer room',
    'cami',
    52.6305131,
    -1.1405991,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Knighton Education Centre',
    'cami',
    52.6127089,
    -1.1244842,
    'Welford Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muhaddith e Azam Community Centre',
    'cami',
    52.6446067,
    -1.1076951,
    'Prestwold Road, LE5 0EZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Jalal Masjid',
    'cami',
    51.8957249,
    -0.4322675,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitul Abraar Jami Masjir',
    'cami',
    51.8949031,
    -0.4384325,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'North Tyneside Bangladeshi Community Association & Mosque',
    'cami',
    55.0426434,
    -1.4408736,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Hudaa Islamic Prayer Group',
    'cami',
    51.5479731,
    -0.0442198,
    'Homerton High Street',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'University of Sussex Mosque',
    'cami',
    50.8647235,
    -0.0884751,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bow Central Mosque',
    'cami',
    51.529195,
    -0.0145175,
    'Bow Road, London, E3 3AP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'White City Musalla',
    'cami',
    51.5121249,
    -0.234702,
    'Bloemfontein Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Almukhbiteen',
    'cami',
    51.5065991,
    -0.2339036,
    'Uxbridge Road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Taj Daar e Madina',
    'cami',
    51.4260572,
    -0.1653906,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'IQRA Community Centre',
    'cami',
    51.5846466,
    -2.9781088,
    'Corporation Road, Newport, NP19 0DZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'As Sabr',
    'cami',
    51.5175268,
    -0.0392735,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Ilyas',
    'cami',
    51.5290704,
    0.0029368,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al-Madani Masjid',
    'cami',
    51.5218398,
    -0.6503894,
    'Whittle Parkway, Slough, SL1 6FE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjal Mosque',
    'cami',
    54.9712449,
    -1.6384053,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Alevi Cultural Centre',
    'cami',
    51.5910757,
    -2.9901221,
    'Clarence Place, Newport, NP19 0AG',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newport Central Jam''e Masjid',
    'cami',
    51.5848926,
    -2.9969069,
    'Stow Hill, Newport, NP20 4DX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Stockport Islamic Centre',
    'cami',
    53.4012093,
    -2.1573795,
    'Longshut Lane West, Stockport, SK2 6RX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Salafi Masjid',
    'cami',
    52.4703405,
    -1.8583834,
    'Wright Street, B10 9SP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    51.5824435,
    -2.9919157,
    'Commercial Road, Newport, NP20 2PP',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Said Nursi Camii',
    'cami',
    51.6051113,
    -0.0542316,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Al Murtaza Trust',
    'cami',
    53.4929654,
    -2.2359728,
    'Honey Street, Manchester, M8 8RG',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bedford Al Falaah Islamic Centre',
    'cami',
    52.1363181,
    -0.4734689,
    'Brereton Road, Bedford',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Bangladesh Islamic Mission & Jamee Mosjid',
    'cami',
    52.1341993,
    -0.4736781,
    'Commercial Road, Bedford, MK40 1QS',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz Dar-ul-ehsan Manchester',
    'cami',
    53.4959493,
    -2.241423,
    'Broughton Street, Manchester, M8 8LZ',
    'sufi',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Manchester Islamic Centre',
    'cami',
    53.4711527,
    -2.2371229,
    'Sidney Street, Manchester, M1 7HB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Albirr',
    'cami',
    52.2858415,
    -1.5292415,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Bilal',
    'cami',
    51.9032098,
    -0.4537413,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Madinah Masjid',
    'cami',
    51.8844559,
    -0.4333538,
    'Oak Road, Luton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Luton Turkish Community Centre',
    'cami',
    51.8766383,
    -0.4208976,
    'Dumfries Street, Luton',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Room',
    'cami',
    51.4262508,
    -0.5690612,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid & Imambargah Shuhdae Karbala',
    'cami',
    51.52279,
    0.0234644,
    'Barking Road, London, E13 8AL',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Darul Arqam Muslim Community Centre',
    'cami',
    51.5211326,
    0.022508,
    'Jutland Road, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Bilal & Islamic Centre',
    'cami',
    51.5326908,
    0.0513182,
    'Barking Road, London, E6 1LB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jamia Masjid',
    'cami',
    51.5310865,
    0.0438006,
    'Barking Road, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newark Islamic Centre',
    'cami',
    53.0817915,
    -0.80083,
    'Appleton Gate, Newark, NG24 1LP',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Inverness Masjid',
    'cami',
    57.483357,
    -4.2306811,
    'Portland Place, Inverness',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'European Islamic Centre & Mosque',
    'cami',
    53.5282637,
    -2.1348267,
    'Manchester Road, Oldham, OL8 4LN',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Gosforth Prayer Hall',
    'cami',
    55.0097822,
    -1.6146126,
    'Christon Road, Newcastle upon Tyne, NE3 1XD',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Ely Islamic Centre',
    'cami',
    52.3968067,
    0.26741,
    'Broad Street, Ely, CB7 4AH',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baitun Noor Mosque',
    'cami',
    51.4644185,
    -0.3850911,
    'Martindale Road, Hounslow, TW4 7HG',
    'ahmadiyya',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Globe Town Mosque',
    'cami',
    51.5286295,
    -0.0482806,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Arrahman ManchesterIslamic Cultural Association',
    'cami',
    53.4543677,
    -2.2485079,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Old Kent Road Mosque & Islamic Cultural Centre',
    'cami',
    51.4860719,
    -0.072297,
    'Old Kent Road, London, SE1 5JH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Room',
    'cami',
    55.9107186,
    -3.3223449,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Farley Hill Jame Masjid',
    'cami',
    51.8712128,
    -0.4289488,
    'The Crossway, Luton, LU1 5LY',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Lambeth Masjid Progressive Community Centre',
    'cami',
    51.4665109,
    -0.101125,
    'Coldharbour Lane, London',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hendon Mosque & Islamic Centre',
    'cami',
    51.5776887,
    -0.2390867,
    'Brent view road',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Chadwell Heath Muslim Centre',
    'cami',
    51.569595,
    0.1245009,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'East Newport Islamic Cultural Centre',
    'cami',
    51.5900485,
    -2.9874602,
    'Cedar Road, Newport, NP19 0BA',
    'muslim',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'SIEA Highlands Mosque',
    'cami',
    52.3990327,
    -1.8064214,
    'Cranmore Avenue, Solihull, B90 4LE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Prayer Room',
    'cami',
    52.951771,
    -1.1854388,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Prayer Room',
    'cami',
    52.9516525,
    -1.1854357,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Cavendish Prayer Rooms',
    'cami',
    53.4695658,
    -2.2394377,
    'Cavendish Street, Manchester, M15 6BG',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Limehouse Bangladeshi Cultural Centre',
    'cami',
    51.510194,
    -0.0284004,
    'Stocks Place, London, E14 8AE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hough End Hall Academy',
    'cami',
    53.4357525,
    -2.2651151,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Razvia Masjid',
    'cami',
    50.9094043,
    -1.3991837,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Abu Bakar Mosque',
    'cami',
    53.4715148,
    -2.2226191,
    'Ardwick Green North, Manchester, M12 6FX',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dar Al-Islam Foundation',
    'cami',
    53.4708601,
    -2.2216908,
    'Higher Ardwick, Manchester, M12 6BZ',
    'shia',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shah Jalal Mosque',
    'cami',
    52.4899538,
    -1.8556099,
    'Ralph Road',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Westwood Mosque',
    'cami',
    53.5439801,
    -2.1330945,
    'Neville Street, Oldham, OL9 6LD',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Zia Ul Quran Centre',
    'cami',
    55.8393653,
    -4.2736727,
    'Kenmure Street, Glasgow',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Markaz Al-Takwa',
    'cami',
    53.4613195,
    -2.2135976,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Quba Masjid',
    'cami',
    53.7620824,
    -2.6759518,
    'Nimes Street, Preston',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Shahjalal Mosque',
    'cami',
    55.9603093,
    -3.183322,
    'Annandale Street Lane',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Iqraa Ethiopian Muslim Centre',
    'cami',
    51.539183,
    -0.2508046,
    'Craven Park Road, London, NW10 4AE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Newport Diyanet Education Community Centre',
    'cami',
    51.5728166,
    -2.9904623,
    'Alexandra Road, Newport, NP20 2JE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dartford Masjid',
    'cami',
    51.4465507,
    0.2157251,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Raza Jamia Masjid',
    'cami',
    53.7518416,
    -2.3795861,
    'Lower Antley Street, Accrington, BB5 0BA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Masjid Tauheedul Islam',
    'cami',
    53.7532657,
    -2.4854556,
    'Bicknell Street, Blackburn, BB1 7EY',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Makki Masjid',
    'cami',
    53.7550736,
    -2.4839777,
    'Wimberley Street, Blackburn, BB1 7LE',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Dawat-e-Islami Faizan-e-Madina',
    'cami',
    51.5908257,
    -2.9833863,
    'Hereford Street, Newport, NP19 8DT',
    'muslim',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Niddrie Masjid',
    'cami',
    55.9359209,
    -3.1299256,
    'Niddrie Mains Terrace, Edinburgh, EH16 4NX',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Portobello Mosque',
    'cami',
    55.9552088,
    -3.1192155,
    'Fishwives Causeway, Edinburgh, EH15 1DH',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Perth Mosque',
    'cami',
    56.3991588,
    -3.4403354,
    'St Catherine''s Road, Perth, PH1 5YA',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Baytul Ihsaan',
    'cami',
    52.6601305,
    -1.0671741,
    'Sandhills Avenue, Leicester, LE5 1PL',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Hamilton hub',
    'cami',
    52.6535435,
    -1.0678742,
    NULL,
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Jaima Ala Abba Community Center',
    'cami',
    51.5896762,
    -2.9798072,
    'Probert Place, Newport, NP19 8EZ',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Borders Islamic Society',
    'cami',
    55.6186982,
    -2.8128772,
    'Roxburgh Street, Galashiels, TD1 1PB',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Skegness Mosque',
    'cami',
    53.1470619,
    0.338624,
    'Roman Bank, Skegness, PE25 2SP',
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Indonesian Islamic Centre',
    'cami',
    51.5578327,
    -0.2469312,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Epsom & Ewell Islamic Society',
    'cami',
    51.3388336,
    -0.266812,
    'Hook Road, Epsom',
    'sunni',
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);

INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    'Muslim Prayer Rooms',
    'cami',
    56.4569199,
    -2.9808531,
    NULL,
    NULL,
    true,
    false,
    false,
    false,
    false,
    false,
    NOW()
);


-- Step 4: Display final count
SELECT COUNT(*) as "Total mosques imported" FROM public.mosques;

-- Step 5: Show sample of imported data with facilities
SELECT name, type, latitude, longitude, 
       men_wc, women_wc, men_wudu, women_wudu, women_prayer_area
FROM public.mosques 
WHERE men_wc = true OR women_wc = true OR men_wudu = true OR women_wudu = true OR women_prayer_area = true
LIMIT 10;
