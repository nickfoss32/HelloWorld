# extra metadata
# LABEL version="1.0"
# LABEL description="Dockerfile used to build container for compiling Hello World application."

# set the base image
FROM centos

# update sources list
RUN yum update -y

# install basic apps
RUN yum install -y wget

# install CMake
RUN wget -qO- "https://cmake.org/files/v3.18/cmake-3.18.4-Linux-x86_64.tar.gz" | tar --strip-components=1 -xz -C /usr/local

RUN yum clean all

# Build directory
RUN mkdir -p /src
WORKDIR /src