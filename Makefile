.PHONY: maven-latest
maven-latest: maven-3.6-jdk-11

.PHONY: maven-3.6-jdk-11
maven-3.6-jdk-11:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.6.3-jdk-11 -t mjslabs/jenkins-jnlp-maven:latest -f maven/3.6/jdk11/Dockerfile maven/3.6/jdk11

.PHONY: maven-3.6-jdk-8
maven-3.6-jdk-8:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.6.3-jdk-8 -f maven/3.6/jdk8/Dockerfile maven/3.6/jdk8

.PHONY: maven-3.5-jdk-8
maven-3.5-jdk-8:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.5.0-jdk-8 -f maven/3.5/jdk8/Dockerfile maven/3.5/jdk8
