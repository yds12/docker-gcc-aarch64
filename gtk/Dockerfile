FROM debian:stable
WORKDIR /usr/app

# for meson (glib)
COPY cross-file.txt .

RUN apt update && \
    apt install -y \
      gcc-aarch64-linux-gnu wget xz-utils \
      make \
      pkg-config gcc g++ g++-aarch64-linux-gnu meson

RUN wget https://download.gnome.org/sources/gtk+/3.24/gtk%2B-3.24.0.tar.xz && \
    tar xvfJ gtk+-3.24.0.tar.xz && \
    rm gtk+-3.24.0.tar.xz

RUN wget http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.66.7.orig.tar.xz && \
    tar xvfJ glib2.0_2.66.7.orig.tar.xz && \
    rm glib2.0_2.66.7.orig.tar.xz

RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-defaults/pkg-config-aarch64-linux-gnu_10.2.0-1ubuntu1_amd64.deb && \
    dpkg -i pkg-config-aarch64-linux-gnu_10.2.0-1ubuntu1_amd64.deb && \
    rm pkg-config-aarch64-linux-gnu_10.2.0-1ubuntu1_amd64.deb

RUN wget https://github.com/libffi/libffi/releases/download/v3.3/libffi-3.3.tar.gz && \
    tar -xf libffi-3.3.tar.gz && \
    rm libffi-3.3.tar.gz

RUN cd libffi-3.3 && \
    PATH=$PATH:/usr/bin CC=aarch64-linux-gnu-gcc ./configure \
      --host=aarch64-linux-gnu --disable-docs --disable-dependency-tracking && \
    make && make install

RUN mv cross-file.txt glib-2.66.7/ && \
    cd glib-2.66.7 && \
    mkdir build
    # meson --cross-file cross-file.txt build

