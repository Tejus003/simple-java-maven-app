FROM openjdk:8u151-jdk-alpine3.7
  
EXPOSE 8081
 
ENV APP_HOME /usr/src/app

COPY /target/my-app-1.0-SNAPSHOT.jar  $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar 
