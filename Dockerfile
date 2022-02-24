# Build debian:mconnect docker images with the following command:
# $ docker build -t debian:mconnect .

FROM debian:buster

MAINTAINER Bruno Binet <bruno.binet@gmail.com>

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq \
                meson \
                pkg-config \
                valac \
                libgirepository1.0-dev \
                libjson-glib-dev \
                libgee-0.8-dev \
                libgnutls28-dev \
                libnotify-dev \
                libgtk-3-dev \
                glib-networking \
                tree \
                uncrustify
ENV SUPPRESS_FMT 1

CMD ["/bin/bash"]
