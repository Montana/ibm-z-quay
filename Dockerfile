FROM s390x/ubuntu:latest

RUN \
    apt-get update && apt-get install -y --no-install-recommends \
        clang \
        cmake \
        libc6-dev \
        libxml2-dev \
        lzma-dev \
        mingw-w64 \
        patch \
        xz-utils \
        crossbuild-essential-arm64 linux-libc-dev-arm64-cross \
        crossbuild-essential-armel linux-libc-dev-armel-cross \
        crossbuild-essential-armhf linux-libc-dev-armhf-cross \
        crossbuild-essential-i386 linux-libc-dev-i386-cross \
        crossbuild-essential-mips linux-libc-dev-mips-cross \
        crossbuild-essential-mipsel linux-libc-dev-mipsel-cross \
        gcc-mips64-linux-gnuabi64 g++-mips64-linux-gnuabi64 linux-libc-dev-mips64-cross \
        crossbuild-essential-mips64el linux-libc-dev-mips64el-cross \
        crossbuild-essential-powerpc linux-libc-dev-powerpc-cross \
        crossbuild-essential-ppc64el linux-libc-dev-ppc64el-cross \
        crossbuild-essential-s390x linux-libc-dev-s390x-cross \
    && rm -rf /var/lib/apt/lists/*

  
CMD echo "Hello World from a container running on $(uname -m)"
