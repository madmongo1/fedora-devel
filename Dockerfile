FROM fedora:latest
RUN dnf update -y
RUN dnf install -y openssh cmake
RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -P ""
RUN dnf groupinstall -y "Development Tools"
RUN dnf install -y g++ clang openssl-devel which
RUN dnf install -y libcxx-devel
COPY src/* /src/
