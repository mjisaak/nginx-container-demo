ARG NGINX_VERSION=alpine

FROM nginx:${NGINX_VERSION}

ADD data/nginx.conf /etc/nginx/conf.d/default.conf
ADD data/index.html /usr/share/nginx/html/index.html

# COPY --from=build /app/dist/elrond-frontend  /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# COPY scripts/patch-config.sh /docker-entrypoint.d
# RUN apk update --no-cache && \
#     apk add jq && \
#     chmod +x /docker-entrypoint.d/patch-config.sh 

EXPOSE 8080
