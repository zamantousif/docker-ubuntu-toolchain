# Get the base Ubuntu image from Docker Hub
FROM ubuntu:20.04
LABEL maintainer="Mohammed Tousif Zaman <zamantousif@gmail.com>"

# Set the timezone
RUN echo 'Etc/UTC' > /etc/timezone \
    && ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && apt-get update \
    && apt-get install -q -y tzdata \
    && rm -rf /var/lib/apt/lists/*

# Install build tools
RUN apt-get update &&\
    apt-get install -y --no-install-recommends\
        build-essential \
        pkg-config \
        apt-transport-https \
        ca-certificates \
        gnupg \
        software-properties-common \
        wget \
        # git \
        # ssh \
        # curl \
        # gdb \
        # valgrind \
        # python3-pip \
        # python3-setuptools \
        # python3-dev \
        locales \
        locales-all \
        tar && \   
    apt-get clean

# Install CMake
# RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | \
#     tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null && \
#     apt-add-repository 'deb https://apt.kitware.com/ubuntu/ focal main' && \
#     apt-get update && \
#     apt-get install -y cmake

# Install python packages
# RUN pip3 install numpy matplotlib pytest scipy pygame

# Install code coverage tools
# RUN pip3 install pytest-cov coverage codecov

