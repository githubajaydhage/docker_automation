FROM ubuntu:latest
RUN apt-get update && apt-get install nginx -y
WORKDIR /dockers
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
