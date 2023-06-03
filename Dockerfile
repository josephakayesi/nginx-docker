FROM alpine:3.2

# Installs nginx and removes cache so it does not create an extra layer
RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx.non-root.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

USER nobody

CMD ["nginx", "-g", "daemon off;"]