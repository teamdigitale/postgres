FROM postgres:12-alpine

RUN apk update && apk add ca-certificates
