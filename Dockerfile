FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host into the container
COPY target/docCONNECT-0.0.1-SNAPSHOT.jar app.jar

# Expose the port on which your application will run
EXPOSE 5000

# Define the command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"]






