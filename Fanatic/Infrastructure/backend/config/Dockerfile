FROM openjdk:8-jdk-alpine

COPY ./bootstrap.yml /usr/src/app/
COPY ./application.yml /usr/src/app/
COPY ./config.jar /usr/src/app/
COPY ./configfile/* /usr/src/app/configfile/

VOLUME /usr/src/app

EXPOSE 8888

WORKDIR /usr/src/app

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "-Dspring.config.location=/usr/src/app/", "/usr/src/app/config.jar"]
