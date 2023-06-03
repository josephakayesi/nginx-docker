<p align="center" ><img src="https://res.cloudinary.com/tutcan/image/upload/v1685780533/general/nginx-docker.webp" width="100%" height="100%" alt="Design by Joseph Akayesi. photo by CHUTTERSNAP"></p>

<br>
<br>
<br>

# nginx docker

## Introduction
This project demonstrates building a docker image using a few best practices


### Best practices used in the project
1. Build image by installing nginx and removing cache. By removing cache, a significant amount of space is shaved off from your final docker image. 


2. Uses a non priviliged user ```nobody``` in the image build. By default, it builds with root user. Using root privileges in you docker images is a bad practice. 

3. Builds docker image using a lightweight base image. 


# Steps to run
* ```docker build . -t nginx```
* ```docker run -d -p 8080:8080 nginx```
* ```curl http://localhost:8080```