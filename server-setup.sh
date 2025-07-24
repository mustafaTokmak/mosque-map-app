#!/bin/bash

# Server Setup Script for Mosque Map App
# Run this on your server: mustafa@5.189.174.110

echo "🚀 Setting up server for Mosque Map App deployment..."

# Update system packages
echo "📦 Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Docker if not already installed
if ! command -v docker &> /dev/null; then
    echo "🐳 Installing Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
    echo "✅ Docker installed. Please logout and login again to use docker without sudo."
else
    echo "✅ Docker is already installed."
fi

# Install Docker Compose if not already installed
if ! command -v docker-compose &> /dev/null; then
    echo "🐳 Installing Docker Compose..."
    sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "✅ Docker Compose installed."
else
    echo "✅ Docker Compose is already installed."
fi

# Create deployment directory
echo "📁 Creating deployment directory..."
mkdir -p ~/mosque-map-app
cd ~/mosque-map-app

# Create a simple monitoring script
echo "📊 Creating monitoring script..."
cat > monitor.sh << 'EOF'
#!/bin/bash
echo "=== Mosque Map App Status ==="
echo "Container Status:"
docker ps -a --filter name=mosque-map-app

echo -e "\nContainer Logs (last 20 lines):"
docker logs --tail 20 mosque-map-app 2>/dev/null || echo "Container not running"

echo -e "\nResource Usage:"
docker stats --no-stream mosque-map-app 2>/dev/null || echo "Container not running"

echo -e "\nPort 3011 Status:"
sudo netstat -tlnp | grep :3011 || echo "Port 3011 not in use"
EOF

chmod +x monitor.sh

# Create restart script
echo "🔄 Creating restart script..."
cat > restart.sh << 'EOF'
#!/bin/bash
echo "🔄 Restarting Mosque Map App..."
docker stop mosque-map-app || true
docker rm mosque-map-app || true
docker pull mustafarenderrevenueai/mosque-map-app:latest
docker run -d \
    --name mosque-map-app \
    --restart unless-stopped \
    -p 3011:80 \
    mustafarenderrevenueai/mosque-map-app:latest
echo "✅ App restarted!"
EOF

chmod +x restart.sh

# Setup basic firewall rules
echo "🔥 Setting up firewall..."
sudo ufw allow ssh
sudo ufw allow 3011/tcp
sudo ufw --force enable

# Install useful tools
echo "🛠️ Installing useful tools..."
sudo apt install -y htop curl wget git nano

echo "✅ Server setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Generate SSH key for GitHub Actions:"
echo "   ssh-keygen -t rsa -b 4096 -f ~/.ssh/github-actions-key"
echo "   cat ~/.ssh/github-actions-key.pub >> ~/.ssh/authorized_keys"
echo "   cat ~/.ssh/github-actions-key  # Copy this to GitHub Secrets as SERVER_SSH_KEY"
echo ""
echo "2. Test Docker access:"
echo "   docker run hello-world"
echo ""
echo "3. Monitor your app:"
echo "   ./monitor.sh"
echo ""
echo "4. Manual restart if needed:"
echo "   ./restart.sh"
echo ""
echo "🌐 Your app will be available at: http://5.189.174.110:3011"