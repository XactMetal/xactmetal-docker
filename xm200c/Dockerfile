ARG IMAGE_ARCH=linux/arm64
ARG BASE_NAME=debian
ARG IMAGE_TAG=2-bullseye
ARG DOCKER_REGISTRY=torizon
FROM --platform=$IMAGE_ARCH $DOCKER_REGISTRY/$BASE_NAME:$IMAGE_TAG AS base

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    apt-utils \
    && apt-get -y upgrade

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

# Add armhf multilib support
RUN dpkg --add-architecture armhf

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
    libopencl-vivante1

# Install Xact Metal base required packages
RUN apt-get install -y --no-install-recommends \
    binutils zip unzip git vim wget xz-utils bzip2 htop

# Install Java 8 packages
RUN apt-get install -y --no-install-recommends \
    openjdk-8-jdk \
    libopenjfx-jni=8u141-b14-3~deb9u1 \
    libopenjfx-java=8u141-b14-3~deb9u1 \
    openjfx=8u141-b14-3~deb9u1

# Apply OpenJFX patches
ADD mod_openjfx.sh /tmp/
RUN /tmp/mod_openjfx.sh

# Install JavaCV
RUN git clone https://github.com/XactMetal/javacv-deps && \
    cd javacv-deps && \
    git checkout 1.5.4-x1 && \
    ./make-deb.sh linux-arm64 && \
    dpkg --no-debsig -i *.deb && \
    cd .. && \
    rm -R javacv-deps

# Install additional packages
RUN apt-get install -y --no-install-recommends \
    bossa-cli gpiod gnupg screen network-manager net-tools libdbus-1-3 libdbus-1-3:armhf libc6:armhf \
    procps gnupg1 parted v4l-utils

# Install Xact Metal development packages 
# RUN apt-get install -y --no-install-recommends \
#     autoconf automake build-essential pkg-config \
#     libglib2.0-dev libpng-dev \
#     libegl-vivante1-dev libgbm-vivante1-dev libglesv2-vivante1-dev

# Clean up system
RUN apt-get clean #&& apt-get autoremove && rm -rf /var/lib/apt/lists/*

# Symlink SSD
RUN mkdir -p /var/db || true && ln -s /torizon/run/xact/ssd /var/db/xact

# Make sure the user can access DRM and video devices
RUN usermod -a -G video,render torizon

ENV WAYLAND_USER="torizon"
ENV XDG_RUNTIME_DIR="/tmp/1000-runtime-dir"
ENV WAYLAND_DISPLAY="wayland-0"
ENV DISPLAY=":0"

# Install xelevate command
COPY xelevate.sh /usr/bin/xelevate

COPY nxp-eula.sh /etc/profile.d/nxp-eula.sh

CMD [ "bash", "-l" ]

