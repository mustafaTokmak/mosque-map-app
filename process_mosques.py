#!/usr/bin/env python3
"""
Script to process mosque data from GeoJSON export and prepare it for database import.
This script extracts mosque information from OpenStreetMap data and transforms it 
into the format expected by the mosque-map application.
"""

import json
import sys
from typing import Dict, List, Any, Optional
from dataclasses import dataclass
import re

@dataclass
class MosqueData:
    name: str
    type: str  # 'mosque', 'cami', 'mescit'
    location: Dict[str, float]  # lat, lng
    address: Optional[str] = None
    congregation: Optional[str] = None
    is_public: bool = True
    facilities: Dict[str, bool] = None
    
    def __post_init__(self):
        if self.facilities is None:
            self.facilities = {
                'menWc': False,
                'womenWc': False,
                'menWudu': False,
                'womenWudu': False,
                'womenPrayerArea': False
            }

def get_center_coordinates(geometry: Dict[str, Any]) -> Optional[Dict[str, float]]:
    """
    Extract center coordinates from various geometry types.
    """
    if geometry['type'] == 'Point':
        coords = geometry['coordinates']
        return {'lat': coords[1], 'lng': coords[0]}
    
    elif geometry['type'] in ['Polygon', 'MultiPolygon']:
        # For polygons, calculate centroid
        coordinates = geometry['coordinates']
        if geometry['type'] == 'MultiPolygon':
            # Take the first polygon for simplicity
            coordinates = coordinates[0]
        
        # Get the outer ring (first array in polygon)
        outer_ring = coordinates[0]
        
        # Calculate centroid
        lat_sum = sum(coord[1] for coord in outer_ring)
        lng_sum = sum(coord[0] for coord in outer_ring)
        count = len(outer_ring)
        
        return {
            'lat': lat_sum / count,
            'lng': lng_sum / count
        }
    
    return None

def determine_mosque_type(properties: Dict[str, Any]) -> str:
    """
    Determine mosque type based on name and properties.
    """
    name = properties.get('name', '').lower()
    
    # Turkish/Arabic naming patterns
    if any(word in name for word in ['cami', 'camii', 'camisi']):
        return 'cami'
    elif any(word in name for word in ['mescit', 'mescidi']):
        return 'mescit'
    else:
        return 'mosque'

def extract_address(properties: Dict[str, Any]) -> Optional[str]:
    """
    Extract address information from properties.
    """
    address_fields = ['addr:full', 'addr:street', 'addr:city', 'addr:postcode']
    address_parts = []
    
    for field in address_fields:
        if field in properties and properties[field]:
            address_parts.append(properties[field])
    
    if address_parts:
        return ', '.join(address_parts)
    
    return None

def extract_facilities(properties: Dict[str, Any]) -> Dict[str, bool]:
    """
    Extract facility information from OpenStreetMap properties.
    """
    facilities = {
        'menWc': False,
        'womenWc': False,
        'menWudu': False,
        'womenWudu': False,
        'womenPrayerArea': False
    }
    
    # Check for toilets
    if properties.get('toilets') == 'yes':
        # If general toilets, assume both men and women have access
        facilities['menWc'] = True
        facilities['womenWc'] = True
    
    # Check for gender-specific access
    male_access = properties.get('male', '').lower()
    female_access = properties.get('female', '').lower()
    
    if male_access in ['yes', 'only']:
        facilities['menWc'] = True
        facilities['menWudu'] = True
    
    if female_access == 'yes':
        facilities['womenWc'] = True
        facilities['womenWudu'] = True
        facilities['womenPrayerArea'] = True
    
    # Check for women's capacity (indicates women's prayer area)
    if 'capacity:women' in properties:
        facilities['womenPrayerArea'] = True
    
    # Check wheelchair descriptions which might mention wudu
    wheelchair_desc_male = properties.get('description:wheelchair:male', '').lower()
    wheelchair_desc_female = properties.get('description:wheelchair:female', '').lower()
    
    if 'wudu' in wheelchair_desc_male:
        facilities['menWudu'] = True
    if 'wudu' in wheelchair_desc_female:
        facilities['womenWudu'] = True
    
    # Check notes for additional info
    note = properties.get('note', '').lower()
    if 'women' in note and 'prayer' in note:
        facilities['womenPrayerArea'] = True
    if 'women' in note and ('wudu' in note or 'ablution' in note):
        facilities['womenWudu'] = True
    if 'women' in note and ('toilet' in note or 'wc' in note):
        facilities['womenWc'] = True
    
    return facilities

def is_mosque_feature(properties: Dict[str, Any]) -> bool:
    """
    Check if a feature represents a mosque/Islamic place of worship.
    """
    amenity = properties.get('amenity', '')
    religion = properties.get('religion', '')
    name = properties.get('name', '').lower()
    
    # Must be a place of worship with Muslim religion
    if amenity == 'place_of_worship' and religion == 'muslim':
        return True
    
    # Or have mosque-related keywords in name
    mosque_keywords = ['mosque', 'masjid', 'cami', 'mescit', 'islamic center', 'islamic centre']
    if any(keyword in name for keyword in mosque_keywords):
        return True
    
    return False

def process_geojson_file(file_path: str) -> List[MosqueData]:
    """
    Process the GeoJSON file and extract mosque data.
    """
    print(f"Processing GeoJSON file: {file_path}")
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except Exception as e:
        print(f"Error reading file: {e}")
        return []
    
    if data.get('type') != 'FeatureCollection':
        print("Error: Not a valid FeatureCollection")
        return []
    
    features = data.get('features', [])
    mosques = []
    
    print(f"Found {len(features)} features in GeoJSON")
    
    for i, feature in enumerate(features):
        if i % 100 == 0:
            print(f"Processing feature {i+1}/{len(features)}")
        
        properties = feature.get('properties', {})
        geometry = feature.get('geometry', {})
        
        # Check if this is a mosque
        if not is_mosque_feature(properties):
            continue
        
        # Get name
        name = properties.get('name')
        if not name:
            # Skip unnamed mosques for now
            continue
        
        # Get coordinates
        coordinates = get_center_coordinates(geometry)
        if not coordinates:
            print(f"Warning: Could not extract coordinates for {name}")
            continue
        
        # Create mosque data
        mosque = MosqueData(
            name=name.strip(),
            type=determine_mosque_type(properties),
            location=coordinates,
            address=extract_address(properties),
            congregation=properties.get('operator', properties.get('denomination')),
            is_public=True,  # Assume public unless specified otherwise
            facilities=extract_facilities(properties)
        )
        
        mosques.append(mosque)
    
    print(f"Extracted {len(mosques)} mosques from GeoJSON")
    return mosques

def generate_json_output(mosques: List[MosqueData], output_file: str):
    """
    Generate JSON file for import into the application.
    """
    mosque_list = []
    
    for mosque in mosques:
        mosque_dict = {
            'name': mosque.name,
            'type': mosque.type,
            'location': {
                'lat': mosque.location['lat'],
                'lng': mosque.location['lng'],
                'address': mosque.address
            },
            'congregation': mosque.congregation,
            'isPublic': mosque.is_public,
            'facilities': mosque.facilities
        }
        mosque_list.append(mosque_dict)
    
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(mosque_list, f, indent=2, ensure_ascii=False)
    
    print(f"Generated JSON output: {output_file}")

def generate_sql_output(mosques: List[MosqueData], output_file: str):
    """
    Generate SQL INSERT statements for Supabase.
    """
    sql_lines = [
        "-- Mosque data import",
        "-- Generated from OpenStreetMap GeoJSON export",
        ""
    ]
    
    for mosque in mosques:
        # Escape single quotes in strings
        name = mosque.name.replace("'", "''")
        address = mosque.address.replace("'", "''") if mosque.address else None
        congregation = mosque.congregation.replace("'", "''") if mosque.congregation else None
        
        # Map mosque type to match your schema constraints
        mosque_type = mosque.type
        if mosque_type == 'mosque':
            mosque_type = 'cami'  # Default mosque type
        
        sql = f"""INSERT INTO public.mosques (name, type, latitude, longitude, address, congregation, is_public, men_wc, women_wc, men_wudu, women_wudu, women_prayer_area, created_at) VALUES (
    '{name}',
    '{mosque_type}',
    {mosque.location['lat']},
    {mosque.location['lng']},
    {f"'{address}'" if address else 'NULL'},
    {f"'{congregation}'" if congregation else 'NULL'},
    {str(mosque.is_public).lower()},
    {str(mosque.facilities['menWc']).lower()},
    {str(mosque.facilities['womenWc']).lower()},
    {str(mosque.facilities['menWudu']).lower()},
    {str(mosque.facilities['womenWudu']).lower()},
    {str(mosque.facilities['womenPrayerArea']).lower()},
    NOW()
);"""
        sql_lines.append(sql)
        sql_lines.append("")
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_lines))
    
    print(f"Generated SQL output: {output_file}")

def main():
    """
    Main function to process the GeoJSON file.
    """
    input_file = "/Users/mustafatokmak/Downloads/export.geojson"
    
    if len(sys.argv) > 1:
        input_file = sys.argv[1]
    
    print("🕌 Mosque Data Processor")
    print("=" * 50)
    
    # Process the GeoJSON file
    mosques = process_geojson_file(input_file)
    
    if not mosques:
        print("No mosque data found!")
        return
    
    # Generate outputs
    json_output = "mosques_data.json"
    sql_output = "mosques_import.sql"
    
    generate_json_output(mosques, json_output)
    generate_sql_output(mosques, sql_output)
    
    print("\n✅ Processing complete!")
    print(f"📊 Total mosques processed: {len(mosques)}")
    print(f"📄 JSON output: {json_output}")
    print(f"🗃️  SQL output: {sql_output}")
    
    # Print some statistics
    type_counts = {}
    for mosque in mosques:
        type_counts[mosque.type] = type_counts.get(mosque.type, 0) + 1
    
    print("\n📈 Mosque types:")
    for mosque_type, count in type_counts.items():
        print(f"   {mosque_type}: {count}")

if __name__ == "__main__":
    main()