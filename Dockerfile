FROM nginx:1.8.1-alpine

VOLUME ["/srv/www"]

RUN rm /etc/nginx/conf.d/default.conf
COPY etc/nginx.conf /etc/nginx/nginx.conf
COPY etc/app.conf /etc/nginx/conf.d/
