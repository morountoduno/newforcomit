# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Copy the HTML, CSS, and JavaScript files into the container
COPY index.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY stylesheet.css /usr/share/nginx/html/

RUN chmod -R 755 /usr/share/nginx/html/images
COPY images /usr/share/nginx/html/html
COPY cover.png /usr/share/nginx/html/
COPY checked.png /usr/share/nginx/html/
COPY unchecked.png /usr/share/nginx/html/


# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
