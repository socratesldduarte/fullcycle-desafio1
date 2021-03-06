FROM golang:latest as GOLANG

WORKDIR /app

COPY app /app/

RUN go mod init example/app

RUN go build

FROM scratch

WORKDIR /app

COPY --from=GOLANG /app .

CMD [ "./app" ]
