FROM golang:latest

ADD . /go/src/github.com/programadriano/person

RUN go get github.com/gorilla/mux

RUN go install /go/src/github.com/programadriano/person

ENTRYPOINT /go/bin/api

EXPOSE 3000