FROM debian:buster-slim

RUN apt update \
    && apt install --no-install-recommends --no-install-suggests -y ffmpeg \
    && apt remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/opt/vc/lib
ENV PATH=$PATH:/opt/vc/bin

ENV BITRATE=12000000
ENV FPS=30
ENV INTRA_REFRESH_PERIOD=30
ENV FRAME_WIDTH=1920
ENV FRAME_HEIGHT=1080
ENV PUBLISHER=localhost
ENV PORT=1935
ENV APP=live
ENV PUBLISH_KEY=camera

CMD raspivid -b $BITRATE -t 0 -fps $FPS --intra $INTRA_REFRESH_PERIOD --inline --flush -w $FRAME_WIDTH -h $FRAME_HEIGHT -o - -v -n | \
    ffmpeg -hide_banner -use_wallclock_as_timestamps 1 -framerate $FPS -i - -c:v copy -an -f flv rtmp://$PUBLISHER:$PORT/$APP/$PUBLISH_KEY
