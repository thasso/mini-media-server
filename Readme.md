# Mini Media Server

This container is an extension of the defaul nginx container and exposes
a given folder as `/media` with CORS support.

The container can be used as a simeple media streaming server without any
restrictions. Use this for development and debugging purposes.

## Run

Run the server, mounting the `local_media` folder to be exposed as `/media`:

    docker run --rm -p 8080:80 -v <local_media>:/srv/media "media-server:latest"
