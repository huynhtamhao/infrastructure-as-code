# base image

FROM nginx:1.15.8-alpine
RUN rm -rf /usr/share/nginx/html
COPY ./dist/DataWarehouse/ /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
