# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML file into the Nginx default server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow traffic to the web server
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
