FROM alpine

RUN apk add --no-cache lftp

CMD lftp -u $USERNAME,$PASSWORD -e exit ppas.launchpad.net
