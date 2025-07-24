# Stage 1: Build the React application
FROM node:18-alpine as builder

WORKDIR /app

# Copy package.json and package-lock.json to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the rest of the application code
COPY . .

# Build the React app, passing Supabase environment variables as build arguments
ARG REACT_APP_SUPABASE_URL
ARG REACT_APP_SUPABASE_ANON_KEY
RUN REACT_APP_SUPABASE_URL=${REACT_APP_SUPABASE_URL} REACT_APP_SUPABASE_ANON_KEY=${REACT_APP_SUPABASE_ANON_KEY} npm run build

# Stage 2: Serve the application with Nginx
FROM nginx:alpine

# Copy the built React app from the builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
