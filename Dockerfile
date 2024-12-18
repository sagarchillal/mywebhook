# Build stage
FROM maven:3.8.3-openjdk-17 AS build
COPY . .
RUN mvn clean install

# Package stage
FROM eclipse-temurin:17-jdk
COPY --from=build /target/your-app.jar app.jar
ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
```[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9)

### Step 3: Push Your Code to a Git Repository
Push your project to a Git repository (GitHub or GitLab)[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9). Render will use this repository to deploy your application.

### Step 4: Create a New Web Service on Render
1. **Sign up or log in to Render**: Go to the Render website and sign up or log in[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9).
2. **Create a new web service**: Click on "New Web Service" and connect your Git repository[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9).
3. **Select Docker runtime**: Choose Docker as the runtime[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9).
4. **Configure your service**: Follow the prompts to configure your service[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9). Render will automatically detect your `Dockerfile` and deploy your application[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9).

### Step 5: Access Your Application
Once the deployment is complete, Render will provide you with a URL to access your application[_{{{CITATION{{{_1{How to host a Spring Boot application for free with Render](https://hostingtutorials.dev/blog/free-spring-boot-host-with-render)[_{{{CITATION{{{_2{Deploy Spring Boot App to Render - DEV Community](https://dev.to/terencepan/deploy-spring-boot-app-to-render-3lm9). You can visit this URL to see your Spring Boot application in action!

Does this help? Let me know if you have any questions or need further assistance!
