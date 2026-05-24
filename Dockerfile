FROM ubuntu:22.04

RUN apt update && apt install -y openssh-server sudo

RUN mkdir /var/run/sshd

RUN useradd -m -s /bin/bash user \
    && echo "root:root123" | chpasswd \
    && usermod -aG sudo user

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
