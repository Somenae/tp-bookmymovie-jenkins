FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y sudo docker.io \
    && usermod -aG docker,sudo jenkins \
    && echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER jenkins