# Use Java 21 base image
FROM eclipse-temurin:21-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file from your computer to the container
COPY build/libs/bank-0.0.1-SNAPSHOT.jar app.jar

# Let Docker know the app will run on port 8080
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
