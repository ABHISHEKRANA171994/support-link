# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom HTML file into the Nginx default server directory
COPY support-link-over-effect.html /usr/share/nginx/html/index.html

# Expose port 80 to allow traffic to the web server
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
