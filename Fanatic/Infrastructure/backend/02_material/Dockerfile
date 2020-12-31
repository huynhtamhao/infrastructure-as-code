FROM openjdk:8-jdk-alpine
COPY . /usr/src/app
VOLUME /usr/src/app
EXPOSE 8083

WORKDIR /usr/src/app
RUN apk add ttf-dejavu

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "-Dspring.config.location=/usr/src/app/", "/usr/src/app/materialmanagement.jar"]
