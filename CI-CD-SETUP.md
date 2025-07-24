# GitHub Actions CI/CD Setup Guide

## 🚀 Automated Deployment to Your Server

This setup automatically builds and deploys your mosque map app to your server whenever you push to the main branch.

## 📋 Prerequisites

### 1. Server Requirements
- Linux server with Docker installed
- SSH access to your server
- Domain/IP address for your server

### 2. GitHub Secrets Configuration

Go to your GitHub repository → Settings → Secrets and Variables → Actions, and add these secrets:

#### Server Connection:
```
SERVER_HOST=5.189.174.110
SERVER_USER=mustafa
SERVER_SSH_KEY=your-private-ssh-key
SERVER_PORT=22 (optional, defaults to 22)
```

#### Docker Hub Credentials:
```
DOCKER_USERNAME=mustafarenderrevenueai
DOCKER_PASSWORD=giwwu7-zoxDab-bypwez
```

#### Environment Variables:
```
VITE_SUPABASE_URL=your-supabase-project-url
VITE_SUPABASE_ANON_KEY=your-supabase-anon-key
```

## 🔧 Server Setup

### 1. Install Docker on your server:
```bash
# Ubuntu/Debian
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
```

### 2. Generate SSH key for GitHub Actions:
```bash
# On your local machine
ssh-keygen -t rsa -b 4096 -f github-actions-key

# Copy public key to server
ssh-copy-id -i github-actions-key.pub user@your-server

# Add private key content to GitHub Secrets as SERVER_SSH_KEY
cat github-actions-key
```

## 🔄 Workflow Process

### When you push to main branch:
1. **Build Stage:**
   - Installs Node.js dependencies
   - Builds React app with Vite
   - Creates Docker image
   - Pushes to GitHub Container Registry

2. **Deploy Stage:**
   - Connects to your server via SSH
   - Pulls latest Docker image
   - Stops old container
   - Starts new container on port 3000

### For Pull Requests:
- Runs tests and builds preview
- Comments on PR with build status
- No deployment (safety measure)

## 🌐 Access Your App

After successful deployment, your app will be available at:
- `http://5.189.174.110:3000`
- `http://your-domain.com:3000` (if you set up a domain)

## 🔒 Production Setup (Optional)

### Nginx Reverse Proxy
Create `/etc/nginx/sites-available/mosque-map`:

```nginx
server {
    listen 80;
    server_name your-domain.com;

    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_cache_bypass $http_upgrade;
    }
}
```

Enable the site:
```bash
sudo ln -s /etc/nginx/sites-available/mosque-map /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```

### SSL with Let's Encrypt:
```bash
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d your-domain.com
```

## 🐛 Troubleshooting

### Check deployment logs:
```bash
# On your server
docker logs mosque-map-app
```

### Check GitHub Actions:
- Go to your repo → Actions tab
- Click on the latest workflow run
- Check build and deploy logs

### Common Issues:
1. **SSH Connection Failed:** Check SERVER_HOST, SERVER_USER, SERVER_SSH_KEY
2. **Docker Build Failed:** Check if all dependencies are properly installed
3. **Container Won't Start:** Check environment variables and port conflicts

## 📊 Monitoring

### Server Resources:
```bash
docker stats mosque-map-app
```

### Application Logs:
```bash
docker logs -f mosque-map-app
```

### Container Status:
```bash
docker ps -a
```