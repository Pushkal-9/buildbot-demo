# Use an official Maven image with Java 17 pre-installed
FROM maven:3.8-openjdk-17

# Set the working directory inside the container
WORKDIR /app

# Copy the source code from the build context
COPY . .

# Perform Maven build
RUN mvn clean package

# Run the built JAR (optional)
CMD ["java", "-jar", "target/buildbot-demo-1.0-SNAPSHOT.jar"]
