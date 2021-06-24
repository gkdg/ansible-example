# syntax=docker/dockerfile:1
FROM ubuntu
RUN apt-get update && apt-get -y install sudo nano openssh-server net-tools iputils-ping
RUN sudo systemctl enable ssh
RUN sudo service ssh start
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN useradd --create-home --base-dir /home sshuser
RUN echo "sshuser:sshuser" | chpasswd
RUN usermod -aG sudo sshuser
EXPOSE 22
ENTRYPOINT service ssh restart && bash