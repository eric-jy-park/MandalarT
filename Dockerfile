FROM nginx:alpine

# Copy static files to nginx html directory
COPY index.html og-image.png robots.txt sitemap.xml manifest.json /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
