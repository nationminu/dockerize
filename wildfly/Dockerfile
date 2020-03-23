FROM openjdk:8-jdk

ENV WILDFLY_VERSION 18.0.1.Final

RUN curl -fsSL https://download.jboss.org/wildfly/${WILDFLY_VERSION}/wildfly-${WILDFLY_VERSION}.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/wildfly-${WILDFLY_VERSION} /usr/share/wildfly

ENV WILDFLY_HOME /usr/share/wildfly

ADD webapp/example.war ${WILDFLY_HOME}/standalone/deployments/
ADD configuration/standalone-full-docker.xml /usr/share/wildfly/standalone/configuration/standalone-full-docker.xml
ADD module.ext /usr/share/wildfly/module.ext
ADD docker-entrypoint.sh /

EXPOSE 8080
EXPOSE 8009
EXPOSE 8443

CMD ["/docker-entrypoint.sh"]
