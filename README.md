# My Docker Website

A simple website running inside an Nginx Docker container.

The website uses an image as its background.

## Project Files

* index.html - The main webpage.
* background.avif - The background image.
* Dockerfile - Instructions used to build the Docker image.
* README.md - Project documentation and commands.

## Docker Image

The Docker image uses nginx:alpine as the base image.

### Version 1.0.0

The first version was built using:

docker build -t ramaengineer/my-website:v1.0.0 .

The container was run using:

docker run -d -p 8080:80 --name my-website ramaengineer/my-website:v1.0.0

The website was tested locally at:

http://localhost:8080

The image was pushed to Docker Hub using:

docker login

docker push ramaengineer/my-website:v1.0.0

### Version 1.0.1

For version v1.0.1, the message in the HTML page was changed.

The old container was stopped and removed:

docker stop my-website

docker rm my-website

The new image was built using:

docker build -t ramaengineer/my-website:v1.0.1 .

The new container was run using:

docker run -d -p 8080:80 --name my-website ramaengineer/my-website:v1.0.1

The new version was tested locally at:

http://localhost:8080

The v1.0.1 image was pushed to Docker Hub using:

docker push ramaengineer/my-website:v1.0.1

## Docker Hub

Docker Hub username:

ramaengineer

Docker Hub repository:

ramaengineer/my-website

Available versions:

* v1.0.0
* v1.0.1

## Dockerfile

The Dockerfile contains:

FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

COPY background.avif /usr/share/nginx/html/background.avif

FROM nginx:alpine uses Nginx with Alpine Linux as the base image.

The first COPY command places the HTML file inside the Nginx web directory.

The second COPY command places the background image inside the same directory.

## Port Mapping

The container uses port 80 for Nginx.

The computer exposes the website through port 8080.

8080:80

This means:

Computer port 8080 -> Container port 80

## Local Access

The website can be accessed from the same computer using:

http://localhost:8080
