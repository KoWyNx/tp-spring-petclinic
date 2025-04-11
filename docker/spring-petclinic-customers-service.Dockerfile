FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ../spring-petclinic-customers-service/target/spring-petclinic-customers-service.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]