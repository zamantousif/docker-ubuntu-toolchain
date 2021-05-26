# Remote development using Docker on CLion

# Get the base Ubuntu image from Docker Hub
FROM ubuntu:19.04
LABEL maintainer="Mohammed Tousif Zaman" \
        email="zamantousif@gmail.com" \
        version="0.0.1" 

# Set the timezone
RUN echo 'Etc/UTC' > /etc/timezone \
    && ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && apt-get update \
    && apt-get install -q -y tzdata \
    && rm -rf /var/lib/apt/lists/*

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

# Install QT5, QTCreator 
# RUN apt-get update \
#     && RUNLEVEL=1 DEBIAN_FRONTEND=noninteractive \
#     && apt-get install -y\
#         qt5-default \
#         qtcreator \
#         qt5-doc \
#         qt5-doc-html \
#         qtbase5-doc-html \
#         qtbase5-examples
        
