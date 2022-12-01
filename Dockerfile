ARG NGINX_VERSION=alpine

FROM nginx:${NGINX_VERSION}

# ADD data/nginx.conf /etc/nginx/conf.d/default.conf.template
ADD data/nginx.conf /etc/nginx/templates/default.conf.template
ADD data/wwwroot /usr/share/nginx/html/

ENV OUTPUT_MESSAGE="HELLO"

EXPOSE 8080