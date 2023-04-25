# Fetching the latest nginx image
FROM nginx

# Copying built assets from builder
COPY home.html/ /usr/share/nginx/html

# Copying our nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
# Start nginx
CMD ["nginx", "-g", "daemon off;"]
