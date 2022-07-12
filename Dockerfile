FROM node:16-alpine

RUN apt update && \
    apt install -y \
      openssh-client \
      curl

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
