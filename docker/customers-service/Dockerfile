FROM maven:3.8.6-openjdk-11 as builder
WORKDIR /app

COPY . .

RUN mvn -f pom.xml install -N -DskipTests

RUN mvn -f spring-petclinic-customers-service/pom.xml package -DskipTests

FROM eclipse-temurin:11-jre-jammy
COPY --from=builder /app/spring-petclinic-customers-service/target/*.jar /app.jar
EXPOSE 8082
ENV DB_URL=jdbc:postgresql://db:5432/petclinic \
    DB_USER=petclinic \
    DB_PASSWORD=petclinic
CMD ["java", "-jar", "app.jar"]
