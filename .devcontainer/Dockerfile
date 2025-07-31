FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    mkdir /var/run/sshd

RUN useradd -m malicious && echo "malicious:malicious" | chpasswd && \
    echo 'malicious ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# 반드시 .devcontainer 내부의 entrypoint.sh 기준으로 복사
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

