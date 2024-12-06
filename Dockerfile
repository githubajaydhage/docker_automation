FROM ubuntu:latest
RUN apt-get update
RUN apt-get install nginx -y
RUN service nginx start
RUN mkdir dockers
RUN cd dockers
WORKDIR dockers
EXPOSE 80
