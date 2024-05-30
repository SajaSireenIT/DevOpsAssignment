# Use the official Nginx image from the Docker Hub
FROM nginx:1.23.3-alpine

# Remove default nginx website and default config
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf

# Copy the static HTML file from src/static directory
COPY src/static/index.html /usr/share/nginx/html/

# Expose the port for Nginx
EXPOSE 80
