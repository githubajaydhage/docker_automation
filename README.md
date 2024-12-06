# docker_automation
This project demonstrates a CI/CD pipeline to automate the process of building, tagging, and pushing Docker images to Docker Hub. GitHub Actions will be used as the automation tool.

# README: Custom NGINX Docker Image
This repository contains a Dockerfile to build and run a custom Docker image for an NGINX web server on Ubuntu. The image is hosted on Docker Hub for easy use.

# Image Overview
Base Image: ubuntu:latest
Web Server: NGINX
Working Directory: /dockers
Exposed Port: 80
This setup is ideal for serving static files or as a base image for further web server configurations.

# Pull the Docker Image
To use this image directly, pull it from Docker Hub:

docker pull <your-dockerhub-username>/<image-name>:<tag>
Example:
docker pull ajaydhage/autopush:testing

# Build the Image Locally
If you'd like to build the image locally:

# Clone this repository:

git clone <repository-url>
cd <repository-directory>

# Build the image:
docker build -t custom-nginx:latest .

# Run the Docker Container
Start a container using the image:

docker run -d -p 80:80 custom-nginx:latest
Access the NGINX Server
Open a browser and navigate to http://localhost.
You should see the default NGINX welcome page.
Customize the Image
To serve your own static files:

Add your files to a directory (e.g., static).
Modify the Dockerfile to copy these files to the default NGINX directory:
COPY ./static /var/www/html
Rebuild the image and run the container.

# Development Workflow
Edit Dockerfile: Modify the Dockerfile to include additional tools, configurations, or static files.

Push to Docker Hub: After building, push your image to Docker Hub for easy reuse:

docker tag custom-nginx:latest <your-dockerhub-username>/<image-name>:latest
docker push <your-dockerhub-username>/<image-name>:latest

# CI/CD Integration: Automate the build and push process using GitHub Actions or other CI/CD tools.

Image Details
Dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install nginx -y
WORKDIR /dockers
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# Contributing
Fork the repository.
Create a new branch.
Submit a pull request with your enhancements.

# License
This project is open-source and available under the MIT License.

# Contact
For questions or issues, reach out via GitHub Issues.

Let me know if you’d like me to adjust the README further!
