import React, { useState, useEffect, useCallback, useRef, useMemo } from 'react';
import { MapContainer, TileLayer, useMapEvents, useMap, Circle, Popup } from 'react-leaflet';
import L from 'leaflet';
import 'leaflet.markercluster';
import { Mosque, MOSQUE_TYPES } from '../types/mosque';
import 'leaflet/dist/leaflet.css';
import 'leaflet.markercluster/dist/MarkerCluster.css';
import 'leaflet.markercluster/dist/MarkerCluster.Default.css';

// Extend Leaflet types for MarkerClusterGroup
declare module 'leaflet' {
  function markerClusterGroup(options?: any): MarkerClusterGroup;
  
  interface MarkerClusterGroup extends L.LayerGroup {
    addLayer(layer: L.Layer): this;
    removeLayer(layer: L.Layer): this;
  }
}

delete (L.Icon.Default.prototype as any)._getIconUrl;
L.Icon.Default.mergeOptions({
  iconRetinaUrl: require('leaflet/dist/images/marker-icon-2x.png'),
  iconUrl: require('leaflet/dist/images/marker-icon.png'),
  shadowUrl: require('leaflet/dist/images/marker-shadow.png'),
});

interface MapComponentProps {
  mosques: Mosque[];
  onMapClick: (lat: number, lng: number) => void;
  onMosqueClick: (mosque: Mosque) => void;
  userLocation?: { lat: number; lng: number } | null;
  centerOnUserLocation?: boolean;
  onLocateMe?: () => void;
  isLoadingLocation?: boolean;
}

// Cache icons to prevent recreation
const iconCache = new Map<string, L.DivIcon>();

const createMosqueIcon = (mosque: Mosque) => {
  const cacheKey = `${mosque.type}-${mosque.isPublic}`;
  
  if (iconCache.has(cacheKey)) {
    return iconCache.get(cacheKey)!;
  }

  const color = MOSQUE_TYPES[mosque.type].color;
  const iconSymbol = mosque.type === 'cami' ? 'M' : mosque.type === 'mescit' ? 'm' : 'F';
  
  const iconHtml = `
    <div style="
      background-color: ${color};
      width: 28px;
      height: 28px;
      border-radius: 50%;
      border: 3px solid white;
      box-shadow: 0 3px 6px rgba(0,0,0,0.4);
      display: flex;
      align-items: center;
      justify-content: center;
      color: white;
      font-weight: bold;
      font-size: 14px;
      font-family: Arial, sans-serif;
      ${!mosque.isPublic ? 'border-style: dashed; border-width: 2px;' : ''}
      position: relative;
    ">
      ${iconSymbol}
      ${!mosque.isPublic ? '<div style="position: absolute; top: -2px; right: -2px; background: #ff6b6b; border-radius: 50%; width: 8px; height: 8px;"></div>' : ''}
    </div>
  `;
  
  const icon = L.divIcon({
    html: iconHtml,
    className: 'mosque-marker',
    iconSize: [28, 28],
    iconAnchor: [14, 14],
  });

  iconCache.set(cacheKey, icon);
  return icon;
};

function MapEvents({ onMapClick }: { onMapClick: (lat: number, lng: number) => void }) {
  useMapEvents({
    click: (e) => {
      onMapClick(e.latlng.lat, e.latlng.lng);
    },
  });
  return null;
}

function MapUpdater({ userLocation, centerOnUserLocation }: { 
  userLocation?: { lat: number; lng: number } | null;
  centerOnUserLocation?: boolean;
}) {
  const map = useMap();
  const [hasProcessedCenterRequest, setHasProcessedCenterRequest] = useState(false);
  
  useEffect(() => {
    if (userLocation && centerOnUserLocation && !hasProcessedCenterRequest) {
      map.setView([userLocation.lat, userLocation.lng], 15, {
        animate: true,
        duration: 1
      });
      setHasProcessedCenterRequest(true);
    }
    
    // Reset when centerOnUserLocation becomes false
    if (!centerOnUserLocation) {
      setHasProcessedCenterRequest(false);
    }
  }, [map, userLocation, centerOnUserLocation, hasProcessedCenterRequest]);
  
  return null;
}

// Component to manage markers with clustering imperatively
function ClusterManager({ mosques, onMosqueClick }: { 
  mosques: Mosque[]; 
  onMosqueClick: (mosque: Mosque) => void;
}) {
  const map = useMap();
  const clusterGroupRef = useRef<L.MarkerClusterGroup | null>(null);
  const markersRef = useRef<Map<string, L.Marker>>(new Map());

  useEffect(() => {
    if (!clusterGroupRef.current) {
      // Create cluster group only once
      clusterGroupRef.current = L.markerClusterGroup({
        maxClusterRadius: 50,
        spiderfyOnMaxZoom: true,
        showCoverageOnHover: false,
        zoomToBoundsOnClick: true,
        disableClusteringAtZoom: 18,
        animate: false,
        animateAddingMarkers: false,
        chunkedLoading: true,
      });
      map.addLayer(clusterGroupRef.current);
    }

    const clusterGroup = clusterGroupRef.current;
    const currentMarkers = markersRef.current;
    const newMarkerIds = new Set(mosques.map(m => m.id));

    // Remove markers that no longer exist
    currentMarkers.forEach((marker, id) => {
      if (!newMarkerIds.has(id)) {
        clusterGroup.removeLayer(marker);
        currentMarkers.delete(id);
      }
    });

    // Add or update markers
    mosques.forEach((mosque) => {
      let marker = currentMarkers.get(mosque.id);
      
      if (!marker) {
        // Create new marker
        marker = L.marker(
          [mosque.location.lat, mosque.location.lng],
          { icon: createMosqueIcon(mosque) }
        );

        // Add popup
        const popupContent = `
          <div>
            <h3>${mosque.name}</h3>
            <p>Type: ${MOSQUE_TYPES[mosque.type].label}</p>
            <p>${mosque.isPublic ? 'Public' : 'Private'}</p>
            ${mosque.congregation ? `<p>Congregation: ${mosque.congregation}</p>` : ''}
          </div>
        `;
        marker.bindPopup(popupContent);

        // Add click handler
        marker.on('click', () => onMosqueClick(mosque));

        clusterGroup.addLayer(marker);
        currentMarkers.set(mosque.id, marker);
      } else {
        // Update existing marker if needed
        const currentPos = marker.getLatLng();
        if (currentPos.lat !== mosque.location.lat || currentPos.lng !== mosque.location.lng) {
          marker.setLatLng([mosque.location.lat, mosque.location.lng]);
        }
        
        // Update icon if needed
        marker.setIcon(createMosqueIcon(mosque));
      }
    });

    return () => {
      if (clusterGroupRef.current) {
        map.removeLayer(clusterGroupRef.current);
        clusterGroupRef.current = null;
        markersRef.current.clear();
      }
    };
  }, [map, mosques, onMosqueClick]);

  return null;
}

const MapComponent: React.FC<MapComponentProps> = React.memo(({ mosques, onMapClick, onMosqueClick, userLocation, centerOnUserLocation, onLocateMe, isLoadingLocation }) => {
  const [showLocationAnimation, setShowLocationAnimation] = useState(false);
  
  // Memoize center to prevent unnecessary re-renders
  const center: [number, number] = useMemo(() => {
    return userLocation 
      ? [userLocation.lat, userLocation.lng]
      : [41.0082, 28.9784]; // Istanbul center as fallback
  }, [userLocation]);

  // Stable callback references
  const handleMapClick = useCallback((lat: number, lng: number) => {
    onMapClick(lat, lng);
  }, [onMapClick]);

  const handleMosqueClick = useCallback((mosque: Mosque) => {
    onMosqueClick(mosque);
  }, [onMosqueClick]);

  // Show animation when user location is found
  useEffect(() => {
    if (userLocation && !isLoadingLocation) {
      setShowLocationAnimation(true);
      const timer = setTimeout(() => {
        setShowLocationAnimation(false);
      }, 3000); // Show for 3 seconds
      
      return () => clearTimeout(timer);
    }
  }, [userLocation, isLoadingLocation]);


  // Memoize map container style
  const mapContainerStyle = useMemo(() => ({
    height: '100%',
    width: '100%'
  }), []);

  // Memoize wrapper style
  const wrapperStyle = useMemo(() => ({
    height: '100%',
    width: '100%',
    position: 'relative' as const
  }), []);

  return (
    <div style={wrapperStyle}>
      <MapContainer
        center={center}
        zoom={13}
        style={mapContainerStyle}
        attributionControl={false}
        zoomControl={false}
      >
        <TileLayer
          attribution=''
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        <MapEvents onMapClick={handleMapClick} />
        <MapUpdater userLocation={userLocation} centerOnUserLocation={centerOnUserLocation} />
        <ClusterManager mosques={mosques} onMosqueClick={handleMosqueClick} />
        
        {/* User location indicator */}
        {userLocation && (
          <>
            <Circle
              center={[userLocation.lat, userLocation.lng]}
              radius={50}
              pathOptions={{
                fillColor: '#4285F4',
                fillOpacity: 0.3,
                color: '#4285F4',
                weight: 2,
                opacity: 0.8,
              }}
            >
              <Popup>
                <div style={{
                  textAlign: 'center',
                  padding: '8px 12px',
                  fontWeight: 'bold',
                  color: '#4285F4',
                  fontSize: '14px'
                }}>
                  You are here
                </div>
              </Popup>
            </Circle>
            
            {/* Center dot */}
            <Circle
              center={[userLocation.lat, userLocation.lng]}
              radius={8}
              pathOptions={{
                fillColor: '#4285F4',
                fillOpacity: 1,
                color: 'white',
                weight: 2,
                opacity: 1,
              }}
            />
          </>
        )}
      </MapContainer>
      
      {/* Animated "You are here" popup */}
      {showLocationAnimation && userLocation && (
        <div
          style={{
            position: 'absolute',
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            zIndex: 1002,
            backgroundColor: '#4285F4',
            color: 'white',
            padding: '12px 20px',
            borderRadius: '20px',
            fontWeight: 'bold',
            fontSize: '16px',
            boxShadow: '0 4px 15px rgba(66, 133, 244, 0.4)',
            animation: 'youAreHereAnimation 3s ease-in-out',
            pointerEvents: 'none',
          }}
        >
          📍 You are here
        </div>
      )}
      
      <button
        onClick={onLocateMe}
        disabled={isLoadingLocation}
        className="locate-me-map-btn"
        title="Find my location"
        style={{
          position: 'absolute',
          bottom: '10px',
          right: '10px',
          zIndex: 1001,
          width: '50px',
          height: '50px',
          backgroundColor: 'white',
          border: '2px solid rgba(0,0,0,0.2)',
          borderRadius: '50%',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          fontSize: '20px',
          boxShadow: '0 2px 10px rgba(0,0,0,0.3)',
          cursor: isLoadingLocation ? 'default' : 'pointer',
          opacity: isLoadingLocation ? 0.6 : 1,
          transition: 'all 0.2s ease-in-out',
        }}
      >
        {isLoadingLocation ? '📍...' : '📍'}
      </button>
    </div>
  );
});

export default MapComponent;