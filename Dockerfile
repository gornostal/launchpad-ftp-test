FROM alpine

WORKDIR /var/test

RUN apk add --no-cache lftp

COPY upload.sh .

CMD ./upload.sh
