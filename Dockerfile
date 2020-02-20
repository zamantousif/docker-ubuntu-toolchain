# Get the base Ubuntu image from Docker Hub
FROM ubuntu:19.04
LABEL maintainer="Mohammed Tousif Zaman"

# Install build tools, cmake and IO2D library - Cairo, graphicsmagick, libpng, Boost, OpenSSL
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    libgtk2.0-dev \
	pkg-config \
    libcairo2-dev \
    libgraphicsmagick1-dev \
    libpng-dev \
    libboost-all-dev \
    libssl-dev 

