FROM golang:1.23.4

WORKDIR /usr/src/app

COPY . .

RUN go mod download

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN  go build -o /sprint_12

CMD ["/sprint_12"]