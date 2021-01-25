ARG IMAGE_ARCH=linux/arm64
ARG BASE_NAME=debian
ARG IMAGE_TAG=2-bullseye
ARG DOCKER_REGISTRY=torizon
FROM --platform=$IMAGE_ARCH $DOCKER_REGISTRY/$BASE_NAME:$IMAGE_TAG AS base

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    apt-utils \
    && apt-get -y upgrade \
    && apt-get clean #&& apt-get autoremove && rm -rf /var/lib/apt/lists/*

ARG ACCEPT_FSL_EULA=0
RUN if [ "${ACCEPT_FSL_EULA}" != "1" ];then \
        echo -n "Error: This image contains Vivante Packages. "; \
        echo "Use --build-arg ACCEPT_FSL_EULA=1 to accept Vivante EULA"; \
        exit 1; \
    else \
        echo "INFO: Vivante EULA has been accepted!"; \
    fi

# Add stretch repo for java-8-jdk and openjfx
RUN echo deb "http://ftp.debian.org/debian" stretch main >> /etc/apt/sources.list

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    libwayland-client0 \
    libwayland-server0 \
    libgal-vivante1 \
    libvsc-vivante1 \
    libgbm-vivante1 \
    libegl-vivante1 \
    libgl-vivante1 \
    libglesv2-vivante1 \
    libglesv1-cm-vivante1 \
    libglslc-vivante1 \
    libopencl-vivante1 \
    && apt-get clean #&& apt-get autoremove && rm -rf /var/lib/apt/lists/*



# Install Xact Metal base required packages
RUN apt-get install -y --no-install-recommends \
    binutils zip unzip git vim wget xz-utils bzip2 htop

# Install Java 8 packages
RUN apt-get install -y --no-install-recommends \
    openjdk-8-jdk \
    libopenjfx-jni=8u141-b14-3~deb9u1 \
    libopenjfx-java=8u141-b14-3~deb9u1 \
    openjfx=8u141-b14-3~deb9u1

# Install Xact Metal development packages 
RUN apt-get install -y --no-install-recommends \
    autoconf automake build-essential pkg-config \
    libglib2.0-dev libpng-dev \
    libegl-vivante1-dev libgbm-vivante1-dev libglesv2-vivante1-dev


# Make sure the user can access DRM and video devices
RUN usermod -a -G video,render torizon

ENV WAYLAND_USER="torizon"
ENV XDG_RUNTIME_DIR="/tmp/1000-runtime-dir"
ENV WAYLAND_DISPLAY="wayland-0"
ENV DISPLAY=":0"

COPY nxp-eula.sh /etc/profile.d/nxp-eula.sh

CMD [ "bash", "-l" ]

