FROM debian:stable
RUN apt update
RUN apt install -y gcc-aarch64-linux-gnu

