FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y rsync && rm -rf /var/lib/apt/lists/*
RUN groupadd -g 412 docker && gpasswd -a jenkins docker
USER jenkins
