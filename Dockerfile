# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/docCONNECT-0.0.1-SNAPSHOT.jar app.jar

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
