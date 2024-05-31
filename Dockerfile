# # Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/docCONNECT.jar /app/docCONNECT.jar

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/docCONNECT.jar"]


