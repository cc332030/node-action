FROM node:16-alpine

RUN apk add --no-cache \
      openssh-client \
      curl

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
