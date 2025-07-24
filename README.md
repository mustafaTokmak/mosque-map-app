# 🕌 Mosque Map App

A modern, mobile-first web application for finding and managing mosque locations with real-time data and interactive maps.

## ✨ Features

- **Interactive Map**: Built with Leaflet for smooth map interactions
- **Mobile-First Design**: Optimized for mobile devices with glassmorphism UI
- **Search & Filter**: Find mosques by name, type, facilities, and location
- **GPS Integration**: "Near Me" functionality with distance calculations
- **Real-time Data**: Powered by Supabase for instant updates
- **Modern UI**: Professional design with gradients and blur effects
- **Facility Tracking**: Track WC, Wudu areas, and women's prayer spaces
- **Responsive Design**: Works perfectly on all device sizes

## 🚀 Technology Stack

- **Frontend**: React 18 + TypeScript + Vite
- **Maps**: Leaflet + React-Leaflet
- **Backend**: Supabase (PostgreSQL + Auth)
- **Styling**: Modern CSS with glassmorphism effects
- **Deployment**: Docker + GitHub Actions CI/CD

## 🌐 Live Demo

**App URL**: http://5.189.174.110:3011

## 🛠️ Development

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build
```

## 📱 Mobile Features

- Touch-friendly interface
- Optimized zoom controls
- Swipeable filter panels
- GPS location detection
- Responsive mosque cards

## 🗺️ Map Features

- Custom mosque markers with type indicators
- Marker clustering for better performance
- "Get Directions" integration
- Real-time location updates

## 🚀 Deployment

This app uses automated CI/CD with GitHub Actions:

1. **Push to main** → Builds Docker image
2. **Deploy to server** → Runs at http://5.189.174.110:3011
3. **Zero downtime** → Rolling updates with health checks

Built with modern web technologies for the best user experience.