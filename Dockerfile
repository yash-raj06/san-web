# Use a lightweight web server image to serve the static content
FROM nginx:alpine

# Copy the built web app to the nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]