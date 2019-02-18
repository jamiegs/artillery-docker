FROM node:10-alpine

MAINTAINER Jamie Snell <jgsnell@gmail.com>

ARG version
ENV ARTILLERY_VERSION 1.5.8-0

WORKDIR /artillery

RUN apk --update --no-cache add ca-certificates \
&& npm install -g artillery@${ARTILLERY_VERSION} \
&& rm -rf /var/cache/apk/* 

# docker run -v [path-to-tests]:/artillery artillery run [test_name].yml

ENTRYPOINT ["artillery"]
