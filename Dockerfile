FROM golang:1.13-alpine3.11
RUN apk add --no-cache git
WORKDIR /go/src/github.com/pacedotdev
RUN git clone https://github.com/thavlik/oto.git
WORKDIR /go/src/github.com/pacedotdev/oto
RUN go get -u ./...
RUN go install