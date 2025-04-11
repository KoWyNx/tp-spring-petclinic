FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ../spring-petclinic-visits-service/target/spring-petclinic-visits-service.jar app.jar

EXPOSE 8083

ENTRYPOINT ["java", "-jar", "app.jar"]