# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy built jar file
COPY target/*.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
