FROM fedora:latest
RUN dnf update -y
RUN dnf install -y openssh cmake
RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -P ""
RUN ssh-keyscan github.com >> ~/.ssh/authorized_keys
RUN dnf groupinstall -y "Development Tools"
