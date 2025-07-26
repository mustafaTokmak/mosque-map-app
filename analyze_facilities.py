#!/usr/bin/env python3
"""
Quick script to analyze what facility-related tags exist in the GeoJSON.
"""

import json

def analyze_facilities(file_path: str):
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    facility_keys = set()
    facility_values = {}
    
    for feature in data['features']:
        properties = feature.get('properties', {})
        
        # Look for any keys that might be facility-related
        for key, value in properties.items():
            key_lower = key.lower()
            if any(word in key_lower for word in ['toilet', 'wc', 'wudu', 'ablution', 'male', 'female', 'women', 'men', 'prayer', 'wheelchair']):
                facility_keys.add(key)
                if key not in facility_values:
                    facility_values[key] = set()
                facility_values[key].add(str(value))
    
    print("🔍 Facility-related keys found in GeoJSON:")
    print("=" * 50)
    
    for key in sorted(facility_keys):
        print(f"{key}: {list(facility_values[key])}")
    
    # Let's also check a few specific mosques with notes
    print("\n📝 Mosques with notes containing facility info:")
    print("=" * 50)
    
    count = 0
    for feature in data['features']:
        properties = feature.get('properties', {})
        note = properties.get('note', '')
        name = properties.get('name', 'Unknown')
        
        if note and any(word in note.lower() for word in ['women', 'toilet', 'wudu', 'prayer']):
            print(f"{name}: {note}")
            count += 1
            if count >= 5:  # Just show first 5
                break

if __name__ == "__main__":
    analyze_facilities("/Users/mustafatokmak/Downloads/export.geojson")