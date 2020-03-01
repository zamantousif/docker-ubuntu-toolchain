# Get the base Ubuntu image from Docker Hub
FROM ubuntu:19.04
LABEL maintainer="Mohammed Tousif Zaman"

# Install build tools, cmake and IO2D library - Cairo, graphicsmagick, libpng, Boost, OpenSSL, remote tools for 
# C++ dev on CLion
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        git \
        libgtk2.0-dev \
        pkg-config \
        libcairo2-dev \
        libgraphicsmagick1-dev \
        libpng-dev \
        libboost-all-dev \
        libssl-dev \
        ssh \
        gdb \
        clang \
        rsync \
        tar \
        python \
    && apt-get clean

RUN ( \
    echo 'LogLevel DEBUG2'; \
    echo 'PermitRootLogin yes'; \
    echo 'PasswordAuthentication yes'; \
    echo 'Subsystem sftp /usr/lib/openssh/sftp-server'; \
  ) > /etc/ssh/sshd_config_test_clion \
    && mkdir /run/sshd

RUN useradd -m user \
    && yes password | passwd user
    
CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config_test_clion"]
