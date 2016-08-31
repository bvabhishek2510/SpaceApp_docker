FROM 362112714802.dkr.ecr.us-west-2.amazonaws.com/tomcat8:8.0.33

ENV CATALINA_HOME /usr/local/tomcat8
ENV PATH ${CATALINA_HOME}/bin:${PATH}

RUN mkdir ${CATALINA_HOME}/webapps/spaceapp


COPY * ${CATALINA_HOME}/webapps/spaceapp/

RUN cd bin
WORKDIR ${CATALINA_HOME}

VOLUME ${CATALINA_HOME}

EXPOSE 8443
EXPOSE 8020
EXPOSE 8008
Expose 8080

CMD ["catalina.sh","run"]