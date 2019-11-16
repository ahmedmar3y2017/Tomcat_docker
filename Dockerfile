From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/bootTomcat.war /usr/local/tomcat/webapps/bootTomcat.war
CMD ["catalina.sh","run"]