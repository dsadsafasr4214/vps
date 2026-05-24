FROM ubuntu:22.04

RUN apt update && apt install -y openssh-server sudo

RUN mkdir /var/run/sshd

RUN useradd -m user && echo "user:password123" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
