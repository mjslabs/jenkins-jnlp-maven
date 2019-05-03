# jenkins-jnlp-maven

[![Build Status][build-badge]][docker]
[![Build Automated][auto-badge]][docker]

[build-badge]: https://img.shields.io/docker/cloud/build/mjslabs/jenkins-jnlp-maven.svg?label=build
[auto-badge]: https://img.shields.io/docker/cloud/automated/mjslabs/jenkins-jnlp-maven.svg
[docker]: https://hub.docker.com/r/mjslabs/jenkins-jnlp-maven/builds

This is an image for a Jenkins JNLP agent used to build Maven projects. The source is from the official [jenkins/jnlp-slave repo](https://hub.docker.com/r/jenkinsci/jnlp-slave/), with Maven installed from the official [maven repo](https://hub.docker.com/_/maven).

See the Jenkins documentation on [Distributed builds](https://wiki.jenkins.io/display/JENKINS/Distributed+builds) for more info.  
See the [jenkins/jnlp-slave repo](https://hub.docker.com/r/jenkinsci/jnlp-slave/) for instructions on running the container.  
See the [maven repo](https://hub.docker.com/_/maven) for more information on Maven.  
