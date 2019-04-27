ARG MY_JAVA_VERSION=8
ARG MY_MAVEN_VERSION=3.6

FROM maven:${MY_MAVEN_VERSION}-jdk-${MY_JAVA_VERSION}-alpine as mavensrc

FROM jenkins/jnlp-slave:alpine

COPY --from=mavensrc /usr/lib/jvm/default-jvm /usr/lib/jvm/default-jvm
COPY --from=mavensrc /usr/share/maven /usr/share/maven
COPY --from=mavensrc /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh

ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "${HOME}/.m2"
ENV PATH "${MAVEN_HOME}/bin:${PATH}"

WORKDIR ${HOME}

LABEL maintainer="info@mjslabs.com"
