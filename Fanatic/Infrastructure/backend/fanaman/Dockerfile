FROM openjdk:8-jdk-alpine
COPY . /usr/src/app
VOLUME /usr/src/app
EXPOSE 8090

WORKDIR /usr/src/app

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "-Dspring.config.location=/usr/src/app/", "/usr/src/app/fanaman.jar"]
