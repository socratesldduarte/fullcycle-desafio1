FROM golang:latest as GOLANG

WORKDIR /app

COPY app /app/

RUN go mod init example/app

RUN go build

FROM busybox:latest

WORKDIR /app

COPY --from=GOLANG /app .

CMD [ "./app" ]
