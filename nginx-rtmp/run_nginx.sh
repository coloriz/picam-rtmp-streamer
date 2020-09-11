#!/usr/bin/env sh

set -e

export NGINX_STAT_PORT=${NGINX_STAT_PORT:-8080}
export RTMP_ALLOW_PUBLISH=${RTMP_ALLOW_PUBLISH:-127.0.0.1}
export RTMP_CHUNK_SIZE=${RTMP_CHUNK_SIZE:-4096}
export RTMP_BUFLEN=${RTMP_BUFLEN:-1000ms}

envsubst < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf

nginx -g "daemon off;"
