# New Deployment System

This deployment system is based on the strategy used in the penguin-video-generator project, providing a simplified and more maintainable approach.

## Architecture

- **Container Registry**: Docker Hub (instead of GitHub Container Registry)
- **Deployment Method**: Direct SSH deployment to server
- **Port**: 3018 (mapped from container port 80)
- **Data Persistence**: Volume mount for persistent data

## Required GitHub Secrets

Configure these secrets in your GitHub repository settings:

### Docker Hub Configuration
- `DOCKER_USERNAME`: Your Docker Hub username
- `DOCKER_PASSWORD`: Your Docker Hub password or access token

### Server Configuration
- `SERVER_HOST`: Your server IP address (e.g., 5.189.174.110)
- `SERVER_USERNAME`: SSH username for server access
- `SERVER_SSH_KEY`: Private SSH key for server authentication

### Application Configuration
- `REACT_APP_SUPABASE_URL`: Your Supabase project URL
- `REACT_APP_SUPABASE_ANON_KEY`: Your Supabase anonymous key

## Deployment Process

1. **Trigger**: Automatic deployment on push to main branch
2. **Build**: Docker image built with environment variables
3. **Push**: Image pushed to Docker Hub
4. **Deploy**: SSH into server, pull image, and restart container

## Server Setup

Ensure your server has:
- Docker installed and running
- SSH access configured
- Port 3018 available for the application

## Key Differences from Previous System

1. **Simplified Registry**: Uses Docker Hub instead of GitHub Container Registry
2. **Direct SSH**: No complex deployment scripts needed
3. **Port Change**: Uses port 3018 to avoid conflicts
4. **Volume Mounting**: Persistent data storage capability
5. **Auto-restart**: Container automatically restarts on failure

## Usage

Simply push to the main branch and the deployment will automatically trigger.

```bash
git add .
git commit -m "Deploy new changes"
git push origin main
```

The application will be available at: `http://your-server-ip:3018`