FROM jlesage/baseimage-gui:ubuntu-18.04

ENV DISPLAY_WIDTH 1920
ENV DISPLAY_HEIGHT 1080

ENV DEBIAN_FRONTEND noninteractive
ENV APP_NAME="chrome"

RUN apt-get update && \
    apt-get -y install ffmpeg curl alsa alsa-tools

RUN curl -o /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y /tmp/chrome.deb

COPY startapp.sh /startapp.sh
