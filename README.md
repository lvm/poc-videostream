# not flix

## what

POC for a self hosted live streaming platform.

## how

```
$ docker build -t notflix .
$ docker run --rm -it -v $HOME/Videos/:/videos -p80:80 --name notflix notflix
$ docker exec -it notflix sh
# video-stream fail-compilation-june-2019.mp4
```

and point you browser to `http://localhost/` where you'll see a video player.

