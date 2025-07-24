export interface Location {
  lat: number;
  lng: number;
}

export const detectPlatform = () => {
  const userAgent = navigator.userAgent || navigator.vendor || (window as any).opera;

  // iOS detection
  if (/iPad|iPhone|iPod/.test(userAgent) && !(window as any).MSStream) {
    return 'ios';
  }

  // Android detection
  if (/android/i.test(userAgent)) {
    return 'android';
  }

  // Desktop/Web
  return 'web';
};

export const openDirections = (destination: Location, destinationName?: string) => {
  const platform = detectPlatform();
  const { lat, lng } = destination;
  const encodedName = destinationName ? encodeURIComponent(destinationName) : '';

  let url = '';

  switch (platform) {
    case 'ios':
      // Try Apple Maps first, fallback to Google Maps
      url = `maps://maps.apple.com/?daddr=${lat},${lng}&dirflg=d`;
      if (destinationName) {
        url = `maps://maps.apple.com/?daddr=${encodedName}&dirflg=d`;
      }
      
      // Attempt to open Apple Maps
      const appleLink = document.createElement('a');
      appleLink.href = url;
      appleLink.click();
      
      // Fallback to Google Maps if Apple Maps fails
      setTimeout(() => {
        const googleUrl = `https://maps.google.com/maps?daddr=${lat},${lng}&dirflg=d`;
        window.open(googleUrl, '_blank');
      }, 1000);
      break;

    case 'android':
      // Use Google Maps intent for Android
      url = `google.navigation:q=${lat},${lng}&mode=d`;
      if (destinationName) {
        url = `google.navigation:q=${encodedName}&mode=d`;
      }
      
      // Try Android intent first
      const androidLink = document.createElement('a');
      androidLink.href = url;
      androidLink.click();
      
      // Fallback to web Google Maps
      setTimeout(() => {
        const webUrl = `https://maps.google.com/maps?daddr=${lat},${lng}&dirflg=d`;
        window.open(webUrl, '_blank');
      }, 1000);
      break;

    case 'web':
    default:
      // Default to Google Maps web version
      url = `https://maps.google.com/maps?daddr=${lat},${lng}&dirflg=d`;
      window.open(url, '_blank');
      break;
  }
};

export const getDirectionsUrl = (destination: Location, destinationName?: string): string => {
  const platform = detectPlatform();
  const { lat, lng } = destination;
  const encodedName = destinationName ? encodeURIComponent(destinationName) : '';

  switch (platform) {
    case 'ios':
      return destinationName 
        ? `maps://maps.apple.com/?daddr=${encodedName}&dirflg=d`
        : `maps://maps.apple.com/?daddr=${lat},${lng}&dirflg=d`;
    
    case 'android':
      return destinationName
        ? `google.navigation:q=${encodedName}&mode=d`
        : `google.navigation:q=${lat},${lng}&mode=d`;
    
    case 'web':
    default:
      return `https://maps.google.com/maps?daddr=${lat},${lng}&dirflg=d`;
  }
};

// Alternative function that always opens Google Maps (more reliable)
export const openGoogleMapsDirections = (destination: Location, destinationName?: string) => {
  const { lat, lng } = destination;
  const url = `https://maps.google.com/maps?daddr=${lat},${lng}&dirflg=d`;
  window.open(url, '_blank');
};

// Function to get current location and open directions
export const openDirectionsFromCurrentLocation = (
  destination: Location, 
  destinationName?: string,
  onLocationError?: (error: string) => void
) => {
  if (!navigator.geolocation) {
    openDirections(destination, destinationName);
    return;
  }

  navigator.geolocation.getCurrentPosition(
    (position) => {
      const { lat, lng } = destination;
      const currentLat = position.coords.latitude;
      const currentLng = position.coords.longitude;
      
      const platform = detectPlatform();
      let url = '';

      switch (platform) {
        case 'ios':
          url = `maps://maps.apple.com/?saddr=${currentLat},${currentLng}&daddr=${lat},${lng}&dirflg=d`;
          break;
        case 'android':
          url = `google.navigation:q=${lat},${lng}&mode=d`;
          break;
        case 'web':
        default:
          url = `https://maps.google.com/maps?saddr=${currentLat},${currentLng}&daddr=${lat},${lng}&dirflg=d`;
          break;
      }

      if (platform === 'web') {
        window.open(url, '_blank');
      } else {
        const link = document.createElement('a');
        link.href = url;
        link.click();
        
        // Fallback to web version
        setTimeout(() => {
          const webUrl = `https://maps.google.com/maps?saddr=${currentLat},${currentLng}&daddr=${lat},${lng}&dirflg=d`;
          window.open(webUrl, '_blank');
        }, 1000);
      }
    },
    (error) => {
      // If location fails, just open directions without current location
      if (onLocationError) {
        onLocationError('Unable to get current location');
      }
      openDirections(destination, destinationName);
    },
    {
      enableHighAccuracy: true,
      timeout: 5000,
      maximumAge: 300000,
    }
  );
};