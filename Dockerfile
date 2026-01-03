FROM debian:12
RUN apt-get update -y && apt-get install -y build-essential equivs sudo vim apt-utils gnupg git device-tree-compiler
RUN apt-get install -y gcc-arm-linux-gnueabihf gcc-aarch64-linux-gnu libolm-dev debhelper dkms dh-dkms