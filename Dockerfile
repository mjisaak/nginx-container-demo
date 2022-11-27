ARG NGINX_VERSION=alpine

FROM nginx:${NGINX_VERSION}

ADD data/nginx.conf /etc/nginx/conf.d/default.conf
ADD data/wwwroot /usr/share/nginx/html/

EXPOSE 8080
