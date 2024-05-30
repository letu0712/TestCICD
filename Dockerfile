# Use a base image containing Java runtime
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy jar file to the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port the app runs on
EXPOSE 8080

# Command to run jar file
ENTRYPOINT ["java","-jar","app.jar"]
