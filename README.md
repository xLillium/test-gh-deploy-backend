# Test GH Deploy Backend

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/xlillium/test-gh-deploy-backend/cd-publish-deploy.yml?branch=main&label=deployment)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.4.4-brightgreen)
![Java](https://img.shields.io/badge/Java-17-orange)
![License](https://img.shields.io/badge/license-MIT-blue)

A Spring Boot REST API designed to demonstrate automated CI/CD workflows with GitHub Actions. This project showcases a modern approach to continuous integration and continuous deployment using Docker containers and GitHub Container Registry.

## Overview

Test GH Deploy Backend is a lightweight Java application that provides a simple REST API endpoint. The primary focus of this project is the implementation of a robust CI/CD pipeline using GitHub Actions to automate the build, test, publish, and deployment processes.

## Features

- **Spring Boot REST API**: Simple REST endpoint at `/api/test`
- **Continuous Integration**: Automated testing on pull requests to main branch
- **Continuous Deployment**: Automated build, Docker image publishing, and deployment on pushes to main branch
- **Docker Integration**: Containerized application deployed via Docker Swarm
- **GitHub Container Registry**: Storage and versioning of Docker images

## Technology Stack

- **Language**: Java 17
- **Framework**: Spring Boot 3.4.4
- **Build Tool**: Maven
- **Containerization**: Docker
- **CI/CD**: GitHub Actions
- **Container Registry**: GitHub Container Registry (ghcr.io)
- **Deployment**: Docker Swarm on VPS

## Getting Started

### Prerequisites

- Java 17 or higher
- Maven 3.9+ (or use the included Maven wrapper)
- Docker (for local containerization)

### Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/xlillium/test-gh-deploy-backend.git
   cd test-gh-deploy-backend
   ```

2. Build the application:
   ```bash
   ./mvnw clean package
   ```

3. Run the application:
   ```bash
   ./mvnw spring-boot:run
   ```

4. Test the API endpoint:
   ```bash
   curl http://localhost:8080/api/test
   ```

### Docker Build

To build and run the Docker container locally:

```bash
# Build the Docker image
docker build -t test-gh-deploy-backend:local .

# Run the container
docker run -p 8080:8080 test-gh-deploy-backend:local
```

## CI/CD Pipeline

This project uses GitHub Actions for CI/CD, with two primary workflows:

### CI - Tests (on Pull Requests)
- Triggered on pull requests to the main branch
- Checks out the code
- Sets up Java 17
- Builds and runs all tests

### CD - Publish and Deploy (on Push to Main)
- Triggered on pushes to the main branch
- Builds the application (skipping tests)
- Creates a Docker image
- Publishes the image to GitHub Container Registry
- Deploys the latest version to a VPS using Docker Swarm

## API Documentation

The API currently includes a single test endpoint:

- `GET /api/test`: Returns a confirmation message with version information

## Future Improvements
- Set up monitoring and observability tools
 
## 📞 Contact

For questions about this infrastructure, please contact [xlillium@cryptobalancer.eu](mailto:xlillium@cryptobalancer.eu).