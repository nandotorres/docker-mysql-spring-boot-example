FROM maven:3.6.3-jdk-8 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:8

COPY --from=builder /app/target/users-mysql.jar users-mysql.jar
EXPOSE 8086
ENTRYPOINT ["java", "-jar", "users-mysql.jar"]
