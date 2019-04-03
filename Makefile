maven-latest:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.6.0-jdk11 -t mjslabs/jenkins-jnlp-maven:latest -f maven/3.6/jdk11/Dockerfile maven/3.6/jdk11
maven-3.6-jdk8:
		docker build --no-cache -t mjslabs/jenkins-jnlp-maven:3.6.0-jdk8 -f maven/3.6/jdk8/Dockerfile maven/3.6/jdk8
