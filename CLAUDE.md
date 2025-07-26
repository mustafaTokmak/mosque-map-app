# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Core Development
- `npm start` - Start development server on port 3000
- `npm run build` - Build production bundle
- `npm test` - Run tests with Jest/React Testing Library
- `npm run lint` - Run ESLint with zero warnings policy
- `npm run lint:fix` - Auto-fix ESLint issues
- `npm run type-check` - Run TypeScript type checking without emit

### Testing
- Run a single test: `npm test -- --testNamePattern="test name"`
- Run tests for specific file: `npm test -- ComponentName`

## Architecture Overview

### Tech Stack
- **Frontend**: React 18 + TypeScript
- **Maps**: Leaflet + React-Leaflet
- **Backend**: Supabase (PostgreSQL + Auth)
- **State Management**: React hooks (no global store - Zustand was removed)
- **Styling**: CSS with glassmorphism effects + mobile-first responsive design

### Core Application Structure

**Main App Flow** (`src/App.tsx`):
- Single-page app with map/list view toggle
- Uses custom hooks for data management and geolocation
- Manages modal states for mosque details and add forms
- Implements real-time filtering and search

**Data Layer**:
- `src/hooks/useMosques.ts` - Main data hook with CRUD operations
- `src/lib/supabase.ts` - Supabase client configuration and database types
- `src/types/mosque.ts` - Frontend type definitions
- Data transformation between database snake_case and frontend camelCase

**Key Components**:
- `MapComponent` - Leaflet map with clustering and custom markers
- `SearchFilter` - Handles search, filtering, and "Near Me" functionality
- `AddMosqueForm` - Modal form for adding new mosques
- `MosqueDetails` - Modal for displaying mosque information
- `MosqueList` - List view with distance calculations

### Database Schema
The app uses Supabase with a `mosques` table containing:
- Location data (latitude/longitude)
- Mosque types: 'cami' | 'mescit' | 'cuma-only'
- Facility booleans (WC, Wudu areas, women's prayer area)
- Public/private status

### Custom Hooks Pattern
- `useMosques` - Data operations with automatic conversion between DB and frontend types
- `useGeolocation` - GPS location handling with error states
- `useAuth` - Authentication (currently basic, can be extended)
- `useLocalStorage` - Persistent local data

## Environment Setup

### Required Environment Variables
Create `.env.local` with:
```
REACT_APP_SUPABASE_URL=your_supabase_project_url
REACT_APP_SUPABASE_ANON_KEY=your_supabase_anon_key
```

### Supabase Setup
1. Run `supabase-schema.sql` in Supabase SQL Editor
2. This creates the mosques table with proper indexes and RLS policies

## Development Patterns

### Type Safety
- Strict TypeScript configuration with zero tolerance for type errors
- Separate types for database (`DatabaseMosque`) and frontend (`Mosque`)
- Type transformation functions in `useMosques` hook

### Mobile-First Design
- All CSS uses mobile-first approach
- `styles/mobile.css` contains responsive breakpoints
- Touch-friendly UI elements and gestures

### Error Handling
- Hooks return error states alongside data
- `ErrorMessage` component provides user-friendly error display
- Network errors and location permissions handled gracefully

### State Management Strategy
- No global state store (Zustand was removed)
- Local component state for UI concerns
- Custom hooks for data and business logic
- Props drilling kept minimal with well-designed component hierarchy

## Code Conventions

### Component Structure
- Functional components with TypeScript
- Custom hooks for complex logic
- Props interfaces defined inline or in separate types file
- Error boundaries where appropriate

### Naming Conventions
- Components: PascalCase (e.g., `MapComponent`)
- Hooks: camelCase starting with "use" (e.g., `useMosques`)
- Types: PascalCase (e.g., `Mosque`, `MosqueFormData`)
- Database types: snake_case to match Supabase conventions

### File Organization
```
src/
├── components/     # Reusable UI components
├── hooks/         # Custom React hooks
├── lib/           # External service configurations
├── types/         # TypeScript type definitions
├── utils/         # Pure utility functions
└── styles/        # CSS files
```

## Testing Strategy
- Jest + React Testing Library setup
- Tests focus on user interactions and component behavior
- Mocking of Supabase client for unit tests
- Transform ignore patterns configured for react-leaflet

## Deployment
- Docker-based deployment with nginx
- Multi-stage build for optimized production bundle
- CI/CD via GitHub Actions
- Environment variables injected at build time