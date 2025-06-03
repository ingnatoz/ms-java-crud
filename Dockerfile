FROM eclipse-temurin:21-jre-alpine-3.21
WORKDIR /home/app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]