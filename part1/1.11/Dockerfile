# Java image
FROM openjdk:18-ea-18-jdk
# Expose port
EXPOSE 8080
# Workdir
WORKDIR /usr/src/app
# Copy contents
COPY . .
# Run maven
RUN ./mvnw package
# Execute
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
