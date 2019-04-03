ARG MY_JAVA_VERSION=8
ARG MY_MAVEN_VERSION=3.5.0

FROM maven:${MY_MAVEN_VERSION}-jdk-${MY_JAVA_VERSION} as mavensrc

FROM jenkins/jnlp-slave

COPY --from=mavensrc /docker-java-home /docker-java-home
COPY --from=mavensrc /usr/share/maven /usr/share/maven
COPY --from=mavensrc /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh

ENV JAVA_HOME /docker-java-home
ENV MAVEN_HOME /usr/share/maven
ENV PATH "${MAVEN_HOME}/bin:${PATH}"

WORKDIR ${HOME}

LABEL maintainer="info@mjslabs.com"
