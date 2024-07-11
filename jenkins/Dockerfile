FROM jenkins/jenkins:lts

USER root

# Update and install necessary packages
RUN apt-get update \
    && apt-get -y install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        software-properties-common \
	inetutils-ping

# Copy necessary files and set configurations for Jenkins
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
