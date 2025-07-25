import React, { useState, useEffect, useRef } from 'react';
import { MapContainer, TileLayer, Marker, Popup, useMapEvents, useMap } from 'react-leaflet';
import MarkerClusterGroup from 'react-leaflet-markercluster';
import L from 'leaflet';
import { Mosque, MOSQUE_TYPES } from '../types/mosque';
import 'leaflet/dist/leaflet.css';

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
}

const createMosqueIcon = (mosque: Mosque) => {
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
  
  return L.divIcon({
    html: iconHtml,
    className: 'mosque-marker',
    iconSize: [28, 28],
    iconAnchor: [14, 14],
  });
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

const MapComponent: React.FC<MapComponentProps> = ({ mosques, onMapClick, onMosqueClick, userLocation, centerOnUserLocation }) => {
  const center: [number, number] = userLocation 
    ? [userLocation.lat, userLocation.lng]
    : [41.0082, 28.9784]; // Istanbul center as fallback

  return (
    <div style={{ height: '100vh', width: '100%' }}>
      <MapContainer
        center={center}
        zoom={13}
        style={{ height: '100%', width: '100%' }}
      >
        <TileLayer
          attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        <MapEvents onMapClick={onMapClick} />
        <MapUpdater userLocation={userLocation} centerOnUserLocation={centerOnUserLocation} />
        <MarkerClusterGroup>
          {mosques.map((mosque) => (
            <Marker
              key={mosque.id}
              position={[mosque.location.lat, mosque.location.lng]}
              icon={createMosqueIcon(mosque)}
              eventHandlers={{
                click: () => onMosqueClick(mosque),
              }}
            >
              <Popup>
                <div>
                  <h3>{mosque.name}</h3>
                  <p>Type: {MOSQUE_TYPES[mosque.type].label}</p>
                  <p>{mosque.isPublic ? 'Public' : 'Private'}</p>
                  {mosque.congregation && <p>Congregation: {mosque.congregation}</p>}
                </div>
              </Popup>
            </Marker>
          ))}
        </MarkerClusterGroup>
      </MapContainer>
    </div>
  );
};

export default MapComponent;