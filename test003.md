## Simplified Docker Practical Exercise (15 minutes)

### Objective
Create a Docker container that runs a simple web application.

### Steps to Follow

#### 1. Prepare a Basic Web Application Environment
- clone this repo: https://github.com/sohamkamani/node-express-mongo-example.

#### 2. Create a Dockerfile
- The candidate should write a Dockerfile for this application. This should include:
  - Use provided test003_Dockerfile for node app
  - Use provided test003_mongo_Dockerfile for MongoDB

#### 3. Build and Run the Docker Image
- Using the command line, the candidate should build a Docker image from the Dockerfile.
- Then, they should run a container from that image and ensure the web application is accessible from a browser.

### Additional Questions (if time permits)
- How would you expose multiple ports in Docker?
- What is the difference between `CMD` and `ENTRYPOINT` in a Dockerfile?
- Explain how you would use a volume in Docker.

### Evaluation
- **Correct Dockerfile**: Is it well-structured and uses the appropriate instructions?
- **Build and Run Process**: Can they build and run the container without issues?
- **Application Access**: Is the web application accessible from the browser?

This exercise is practical and focused, allowing a quick assessment of whether the candidate possesses fundamental skills in Docker. Additionally, it leaves room for additional questions that can delve deeper into their theoretical understanding.
