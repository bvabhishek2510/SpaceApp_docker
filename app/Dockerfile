
FROM 362112714802.dkr.ecr.us-west-2.amazonaws.com/tomcat8:8.0.33

ENV CATALINA_HOME /usr/local/tomcat8
ENV PATH ${CATALINA_HOME}/bin:${PATH}

RUN mkdir ${CATALINA_HOME}/webapps/spaceapp

COPY index.html ${CATALINA_HOME}/webapps/spaceapp
COPY geolocation.html ${CATALINA_HOME}/webapps/spaceapp
COPY css/. ${CATALINA_HOME}/webapps/spaceapp
COPY js/. ${CATALINA_HOME}/webapps/spaceapp
COPY img/. ${CATALINA_HOME}/webapps/spaceapp
COPY font-awesome/css/. ${CATALINA_HOME}/webapps/spaceapp
COPY font-awesome/fonts/. ${CATALINA_HOME}/webapps/spaceapp
COPY font-awesome/less/. ${CATALINA_HOME}/webapps/spaceapp
COPY font-awesome/scss/. ${CATALINA_HOME}/webapps/spaceapp
COPY fonts/. ${CATALINA_HOME}/webapps/spaceapp
RUN cd bin
WORKDIR ${CATALINA_HOME}

VOLUME ${CATALINA_HOME}

EXPOSE 8443
EXPOSE 8020
EXPOSE 8008
Expose 8080

CMD ["catalina.sh","run"]




