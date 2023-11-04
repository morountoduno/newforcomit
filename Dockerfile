# Use an official Nginx runtime as a parent image
FROM nginx:stable

# Copy the HTML, CSS, and JavaScript files into the container
COPY index.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html
COPY stylesheet.css /usr/share/nginx/html


# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]