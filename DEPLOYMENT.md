# Docker Deployment Guide

## Local Development with Docker

### 1. Build the Docker image
```bash
docker build -t mosque-map-app .
```

### 2. Run the container
```bash
docker run -p 3000:80 mosque-map-app
```

### 3. Using Docker Compose
```bash
docker-compose up -d
```

Your app will be available at: http://localhost:3000

## Production Deployment

### Environment Variables
Before deploying, make sure to set your Supabase environment variables:

```bash
# Create .env.production file
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_key
```

### Deploy to Various Platforms

#### 1. **DigitalOcean App Platform**
- Connect your GitHub repository
- Set environment variables in the dashboard
- Auto-deploy from main branch

#### 2. **AWS ECS/Fargate**
```bash
# Build and push to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin your-account.dkr.ecr.us-east-1.amazonaws.com
docker build -t mosque-map-app .
docker tag mosque-map-app:latest your-account.dkr.ecr.us-east-1.amazonaws.com/mosque-map-app:latest
docker push your-account.dkr.ecr.us-east-1.amazonaws.com/mosque-map-app:latest
```

#### 3. **Google Cloud Run**
```bash
# Build and deploy
gcloud builds submit --tag gcr.io/your-project/mosque-map-app
gcloud run deploy --image gcr.io/your-project/mosque-map-app --platform managed
```

#### 4. **Heroku Container Registry**
```bash
# Login to Heroku container registry
heroku container:login

# Build and push
heroku container:push web -a your-app-name
heroku container:release web -a your-app-name
```

#### 5. **Railway**
- Connect GitHub repository
- Railway will auto-detect Dockerfile
- Set environment variables in dashboard

#### 6. **Render**
- Connect GitHub repository
- Set Docker as build environment
- Configure environment variables

## Production Optimizations

The Docker setup includes:
- **Multi-stage build** for smaller image size
- **Nginx** for efficient static file serving
- **Gzip compression** for faster loading
- **Security headers** for better security
- **Client-side routing** support for React Router
- **Static asset caching** for performance

## Monitoring and Logs

```bash
# View container logs
docker logs -f container_name

# Monitor container stats
docker stats container_name
```