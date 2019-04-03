maven-latest:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.6.0-jdk-11 -t mjslabs/jenkins-jnlp-maven:latest -f maven/3.6/jdk11/Dockerfile maven/3.6/jdk11
maven-3.6-jdk-8:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.6.0-jdk-8 -f maven/3.6/jdk8/Dockerfile maven/3.6/jdk8
maven-3.5-jdk-8:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.5.0-jdk-8 -f maven/3.5/jdk8/Dockerfile maven/3.5/jdk8
