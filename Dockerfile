# Use a base image with Java
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the image
COPY target/hello-world-app-1.0-SNAPSHOT.jar /app/app.jar

# Expose the port that your application listens on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]

