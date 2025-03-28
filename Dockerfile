# Use official Maven image to build the project
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Use a lightweight JDK image for running the app
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/LibraryManagementSystem.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
