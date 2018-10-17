FROM nginx:mainline-alpine

EXPOSE 80 443

RUN rm /etc/nginx/conf.d/* 
RUN rm /etc/nginx/nginx.conf

ADD django*.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/

