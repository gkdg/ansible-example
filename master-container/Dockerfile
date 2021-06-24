# syntax=docker/dockerfile:1
FROM ubuntu
RUN apt-get update && apt-get -y install sudo nano openssh-server net-tools iputils-ping sshpass software-properties-common
RUN sudo add-apt-repository --yes --update ppa:ansible/ansible
RUN sudo apt install ansible -y
RUN sudo systemctl enable ssh
RUN sudo service ssh start
ENV ANSIBLE_HOST_KEY_CHECKING=False
EXPOSE 22