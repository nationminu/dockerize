#!/usr/bin/env bash

export CONTAINER_IP=$(hostname -I | awk '{print $1}')
export JAVA_OPTS="-Djboss.bind.address=${CONTAINER_IP} -Djgroups.bind_addr=${CONTAINER_IP} -Djboss.bind.address.management=127.0.0.1"
export JAVA_OPTS="${JAVA_OPTS} -Dorg.jboss.as.logging.per-deployment=false -Dspring.profiles.active=PRD"
export JBOSS_MODULEPATH=${WILDFLY_HOME}/modules:${WILDFLY_HOME}/module.ext

${WILDFLY_HOME}/bin/standalone.sh -c standalone-full-docker.xml
