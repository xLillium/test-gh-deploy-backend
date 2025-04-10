FROM eclipse-temurin:17-jre-alpine

COPY target/*.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]