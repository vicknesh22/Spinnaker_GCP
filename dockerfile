FROM tomcat:8.0.20-jre8
MAINTAINER vicknesh22@gmail.com
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin

RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME
VOLUME ["/tmp"]
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
WORKDIR $PATH
CMD ["catalina.sh","run"]
