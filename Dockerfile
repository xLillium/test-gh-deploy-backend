FROM eclipse-temurin:17-jre-alpine
LABEL org.opencontainers.image.source=https://github.com/xlillium/test-gh-deploy-backend

COPY target/*.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]