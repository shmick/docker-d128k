FROM golang:1-alpine

RUN apk add --no-cache bash curl git 

RUN go get github.com/btcsuite/btcd

WORKDIR /app

COPY src/d128k.go .

RUN go build d128k.go

EXPOSE 8085/tcp

CMD ["/app/d128k"]
