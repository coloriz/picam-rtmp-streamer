# PiCamera RTMP Streamer

Containerized pi camera app and nginx-based camera stream publisher.

## Step by step guide

### Install Docker

```shell
$ curl -sSL https://get.docker.com | sh
$ sudo usermod -aG docker $(whomai)
```

### Install Docker Compose

```shell
$ sudo apt install -y docker-compose
```

### Clone this repo

```shell
$ git clone https://github.com/coloriz/picam-rtmp-streamer.git
```

### Run containers

```shell
$ cd picam-rtmp-streamer
$ docker-compose up -d
```

To play RTMP camera stream, rtmp://localhost:1935/live/camera

To see nginx server statistics in xml, http://localhost:8080/stat
