FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

# root 비번 설정
RUN echo 'root:root' | chpasswd

# root ssh 허용
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

COPY entrypoint.sh /entrypoint.sh

