#!/usr/bin/env bash
exec google-chrome --no-sandbox --profile-directory="Profile 1" --enable-webgl --ignore-gpu-blacklist --disable-accelerated-video-decode

# TODO: Try or remove these flags
## --disable-accelerated-video \
##  --disable-accelerated-video-decode --disable-accelerated-plugins --disable-accelerated-compositing \
##  --disable-accelerated-layers --disable-accelerated-2d-canvas
