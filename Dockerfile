FROM alpine:latest
LABEL maintainer="EZ Bardeguez @EZtheOG"


RUN mkdir -p /build && apk add --update zip unzip

VOLUME /build
WORKDIR /build

ENTRYPOINT ["zip"]
CMD ["-h"]