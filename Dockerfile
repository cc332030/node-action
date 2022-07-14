FROM node:16-alpine

RUN apk add --no-cache \
      openssh-client \
      curl

ENV C_GITHUB_URL=https://github.com/cc332030

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
