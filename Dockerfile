FROM nginx:1.17-alpine

RUN apk add --no-cache ffmpeg && mkdir -p /tmp/video

COPY html/ /usr/share/nginx/html/
COPY bin/video-stream /usr/bin/video-stream
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

VOLUME ["/videos"]
WORKDIR /videos