# Use an official Maven image to build the application
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean install

# Use an official OpenJDK image to run the application
FROM openjdk:17-jdk
WORKDIR /app
COPY --from=build /app/target/LibraryManagementSystem.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
