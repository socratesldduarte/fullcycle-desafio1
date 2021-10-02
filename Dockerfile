FROM golang:latest as GOLANG

WORKDIR /app

COPY app /app/

RUN go mod init example/app

CMD [ "/go", "run", "." ]

# FROM alpine

# WORKDIR /app

# COPY --from=GOLANG /app .

# CMD [ "/go", "run", "." ]
