FROM openjdk:11

MAINTAINER Mohamed Sameem <mmmohamedsameem@gmail.com>

########################################################
## Environment Variables
########################################################

VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

# Exposing expected port by WEBUI
EXPOSE 8050
