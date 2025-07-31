FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd && \
    echo 'root:root' | chpasswd

# SSH 서버 구동을 위해 필요한 설정
COPY sshd_config /etc/ssh/sshd_config
EXPOSE 2222
CMD ["/usr/sbin/sshd", "-D"]

