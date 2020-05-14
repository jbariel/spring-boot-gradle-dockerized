FROM openjdk:8-alpine

RUN mkdir -p /app && apk update

WORKDIR /app

COPY build/libs/spring-boot-gradle-dockerized-0.0.1-SNAPSHOT.jar app.jar

CMD ["java","-jar","app.jar"]
