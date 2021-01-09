FROM openjdk:8-jdk-alpine

COPY ./bootstrap.yml /usr/src/app/
COPY ./$BE_SYSTEM_NAME.jar /usr/src/app/

VOLUME /usr/src/app

EXPOSE $BE_SYSTEM_PORT

WORKDIR /usr/src/app

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "-Dspring.profiles.active=prod", "-Dspring.config.location=/usr/src/app/", "/usr/src/app/$BE_SYSTEM_NAME.jar"]
