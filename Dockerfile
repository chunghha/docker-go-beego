FROM golang:latest

RUN mkdir -p /app
WORKDIR /app

ADD . /app
RUN go get github.com/astaxie/beego
RUN go build ./src/main.go

EXPOSE 8080

CMD ["./main"]