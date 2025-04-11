FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ../spring-petclinic-vets-service/target/spring-petclinic-vets-service.jar app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "app.jar"]