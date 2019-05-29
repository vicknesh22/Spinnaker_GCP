FROM openjdk:8-jre-alpine
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME
VOLUME /tmp
RUN rm -rf /usr/local/tomcat/webapps/*
EXPOSE 8080
RUN curl https://console.cloud.google.com/storage/browser/petclinic_gcp/petclinic.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]
