# Use a Java runtime image
FROM openjdk:latest

# Copy the JAR file into the Docker image
COPY ./target/sem-1.0.2-jar-with-dependencies.jar /app/sem.jar

# Set the working directory
WORKDIR /app

# Specify the command to run the JAR
ENTRYPOINT ["java", "-jar", "sem.jar"]
