FROM openjdk:8-jdk-alpine
COPY . /usr/src/app
VOLUME /usr/src/app
EXPOSE 8084

WORKDIR /usr/src/app # co the hieu la cd den thu muc nay
RUN apk add ttf-dejavu

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "-Dspring.config.location=/usr/src/app/", "/usr/src/app/productcontrol.jar"]
