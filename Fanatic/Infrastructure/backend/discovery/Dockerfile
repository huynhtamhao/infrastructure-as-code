FROM openjdk:8-jdk-alpine

COPY ./application.yml /usr/src/app/
COPY ./discovery.jar /usr/src/app/

VOLUME /usr/src/app

EXPOSE 8889

WORKDIR /usr/src/app

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "-Dspring.config.location=/usr/src/app/", "/usr/src/app/discovery.jar"]
