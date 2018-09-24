FROM alpine:3.8

LABEL maintainer="EZ Bardeguez @EZtheOG" \
	  name="zipzip" \
	  alipine="3.8" \
   	  description="For building AMIs" \
      license="MIT" \
   	  url="https://github.com/EZtheOG/zipzip" \
      version.branch="${GIT_BRANCH}" version.commit="${GIT_COMMIT}"

RUN mkdir -p /build
RUN apk add --update zip unzip

VOLUME /build
WORKDIR /build

ENTRYPOINT ["zip"]
CMD ["-h"]