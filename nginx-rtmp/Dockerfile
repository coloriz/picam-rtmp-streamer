FROM debian:buster-slim

RUN apt update \
    && apt install --no-install-recommends --no-install-suggests -y gettext-base nginx libnginx-mod-rtmp \
    && apt remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* \
# forward request and error logs to docker log collector
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

COPY stat.xsl /usr/share/nginx/html/
COPY nginx.conf.template /etc/nginx/templates/
COPY run_nginx.sh /

EXPOSE 1935

CMD ["/run_nginx.sh"]
