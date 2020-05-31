# chrome-record-headless

Chrome, X11, VNC, ffmpeg in a Docker container targeted for headless Linux server. Allows recording of chrome tab to mp4.

## Getting Started

### Pull Image and Run Container

#### No Sound

```
docker run \
    --name crh \
    --rm \
    -d \
    -p 5800:5800 \
    -p 5900:5900 \
    -v /opt/crh:/output \
    crh:latest

ffmpeg -f x11grab -s 1920x1080 -r 30 -i :0.0 -q:v 0 -c:v libx264 -preset fast -y /output/screen.mp4
```

#### With Sound

```
docker run \
    --name crh \
    --rm \
    -d \
    -p 5800:5800 \
    -p 5900:5900 \
    -v /opt/crh:/output \
    --device /dev/snd
    crh:latest

ffmpeg -f x11grab -s 1920x1080 -r 30 -i :0.0 -q:v 0 -c:v libx264 -preset fast -f alsa -i hw:0 -y /output/screen.mp4
```

### Using Application

#### Web

http://localhost:5800/

## Security

Make sure your network is protected and configured correctly as this app offers no security or protection on its own.
