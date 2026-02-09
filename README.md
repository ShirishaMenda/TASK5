Containerizing a Strapi Application


STEP 1: Prepare Your Strapi Project

Make sure your Strapi application is created and working on your machine.

If you do not have a Strapi project yet, create one:

npx create-strapi-app@latest my-strapi-app
cd my-strapi-app


STEP 2: Build Your Strapi Project

Generate the production build so Strapi can run properly inside Docker.

npm run build


STEP 3: Create a .dockerignore File

Create a file named .dockerignore in the root of your project.
Add the files and folders that should not be copied into the Docker image, such as:

node_modules
.git
.cache
build
.env


STEP 4:
Create a Dockerfile.
Write the instructions that tell Docker how to install, build, and run your Strapi app.

docker build -t strapi-app .



STEP 5: Build the Docker Image

Ask Docker to create an image based on your Dockerfile.

docker build -t strapi-app .


STEP 6: Run the Docker Container

Start the container so Strapi runs locally on your computer.

docker run -p 1337:1337 strapi-app


Strapi will now be accessible at:

http://localhost:1337/admin
