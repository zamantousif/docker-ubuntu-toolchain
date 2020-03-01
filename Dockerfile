# Remote development using Docker on CLion

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
    
RUN apt-get update \
    && qt5-default \
       qtcreator \
       qt5-doc \
       qt5-doc-html \
       qtbase5-doc-html \
       qtbase5-examples \
       
