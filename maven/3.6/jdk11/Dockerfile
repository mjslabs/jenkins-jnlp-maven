ARG MY_JAVA_VERSION=11
ARG MY_MAVEN_VERSION=3.6.3

FROM maven:${MY_MAVEN_VERSION}-jdk-${MY_JAVA_VERSION} as mavensrc

FROM jenkins/inbound-agent:latest-jdk${MY_JAVA_VERSION}

COPY --from=mavensrc /usr/local/openjdk-11 /usr/local/openjdk-11
COPY --from=mavensrc /usr/share/maven /usr/share/maven
COPY --from=mavensrc /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh

ENV JAVA_HOME /usr/local/openjdk-11
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "${HOME}/.m2"
ENV PATH "${MAVEN_HOME}/bin:${PATH}"

LABEL maintainer="info@mjslabs.com"
