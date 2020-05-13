FROM open-jdk:8-jdk-alpine

RUN mkdir -p /app && apk update

WORKDIR /app

COPY build/libs/foo.jar app.jar

CMD ["java","-jar","app.jar"]
