FROM golang:1.17

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./
COPY data.json ./

RUN go build -o /docker-gs-ping

EXPOSE 8080

CMD ["/docker-gs-ping"]