# Tomcat_docker

Create the dockerfile. Docker file is a list of commands that we want the docker engine to execute. We will be needing a tomcat image using which we will be deploying our application. Go to dockerhub and search tomcat, we will be using official tomcat images. Here since we are using jdk 8 so we select alpine 8.

  dockerfile content 
  
From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/<warName>.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]

-- docker build -t <imageName>

Again run the image as a container but this time using the publish command where we link the docker internal port 8080 to external port 8080, so that it can be accessed externally.


-- docker container run -p 8080:8080 -d <imageName>
  
  Now go to localhost:8080
  

  

