FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY background.avif /usr/share/nginx/html/background.avif