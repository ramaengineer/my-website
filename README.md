\# My Docker Website



A simple website running inside an Nginx Docker container.



The website uses an image as its background.





\## Project Files



\- `index.html` — The main webpage.

\- `background.avif` — The background image used by the webpage.

\- `Dockerfile` — Instructions used to build the Docker image with Nginx.



\## Build the Docker Image



To build the Docker image, run:



```bash

docker build -t ramaengineer/my-website:v1.0.0 .

\## Run the Container



To run the website in a Docker container, use:



```bash

docker run -d -p 8080:80 --name my-website ramaengineer/my-website:v1.0.0

