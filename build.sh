#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e
echo "Starting the build process..."
# Navigate to the base directory of the project
cd "$(dirname "$0")"
# Clean and build the project using Maven
echo "Running Maven clean and package..."
mvn clean package
# Run the application (update the jar file name if necessary)
echo "Running the application."
java -jar target/*.jar
echo "Build and execution completed successfully!!"
