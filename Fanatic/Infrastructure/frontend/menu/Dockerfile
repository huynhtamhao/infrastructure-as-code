# base image

FROM nginx:1.15.8-alpine
RUN rm -rf /usr/share/nginx/html
COPY ./dist/Fanatic-Menu/ /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
