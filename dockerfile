FROM tomcat:8.0.20-jre8
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME
VOLUME /tmp
RUN rm -rf /usr/local/tomcat/webapps/*
EXPOSE 8080
COPY target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
