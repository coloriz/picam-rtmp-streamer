#!/usr/bin/env sh

set -e

export NGINX_STAT_PORT=${NGINX_STAT_PORT:-8080}
export RTMP_ALLOW_PUBLISH=${RTMP_ALLOW_PUBLISH:-127.0.0.1}

envsubst < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf

nginx -g "daemon off;"
