FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ../spring-petclinic-api-gateway/target/spring-petclinic-api-gateway.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]