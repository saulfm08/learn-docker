FROM nginx:alpine

RUN mkdir /var/www

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

COPY index.html /var/www/