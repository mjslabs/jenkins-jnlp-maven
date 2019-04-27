ARG MY_JAVA_VERSION=11
ARG MY_MAVEN_VERSION=3.6

FROM maven:${MY_MAVEN_VERSION}-jdk-${MY_JAVA_VERSION} as mavensrc

FROM jenkins/jnlp-slave:latest-jdk${MY_JAVA_VERSION}

COPY --from=mavensrc /docker-java-home /docker-java-home
COPY --from=mavensrc /etc/ssl/certs/java /etc/ssl/certs/java
COPY --from=mavensrc /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=mavensrc /usr/share/maven /usr/share/maven
COPY --from=mavensrc /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh

ENV JAVA_HOME /docker-java-home
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "${HOME}/.m2"
ENV PATH "${MAVEN_HOME}/bin:${PATH}"

WORKDIR ${HOME}

LABEL maintainer="info@mjslabs.com"
