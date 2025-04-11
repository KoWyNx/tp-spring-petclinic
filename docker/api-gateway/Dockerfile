FROM maven:3.8.6-openjdk-11 as builder
WORKDIR /app

COPY . .

RUN mvn -f pom.xml install -N -DskipTests

RUN mvn -f spring-petclinic-api-gateway/pom.xml package -DskipTests

FROM eclipse-temurin:11-jre-jammy
COPY --from=builder /app/spring-petclinic-api-gateway/target/*.jar /app.jar
EXPOSE 8080
ENV APP_VETS_URI=http://vets-service:8083 \
    APP_CUSTOMERS_URI=http://customers-service:8082 \
    APP_VISITS_URI=http://visits-service:8084
CMD ["java", "-jar", "app.jar"]
