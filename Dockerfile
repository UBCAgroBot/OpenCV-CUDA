FROM --platform=linux/arm64 nvcr.io/nvidia/l4t-jetpack:r36.3.0

RUN apt update && apt install -y --no-install-recommends \
    ca-certificates curl unzip git cmake build-essential pkg-config ccache \
    libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libeigen3-dev \
    libtbb12 ninja-build libjpeg-turbo8-dev libpng-dev file dpkg-dev fakeroot tar gzip xz-utils \
    cpack fakeroot dpkg-dev && rm -rf /var/lib/apt/lists/*