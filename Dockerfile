FROM alpine

RUN apk --update upgrade && \
    apk --update add ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

RUN mkdir /api

WORKDIR /api

ADD ./bin/api_alpine /api/api

CMD ["/api/api","-addr=:8080"]
