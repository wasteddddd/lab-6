FROM maven:3.8.7-eclipse-temurin-17 AS build
WORKDIR /app
COPY . /app
RUN mvn clean package

FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/myapp.jar /app/myapp.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
