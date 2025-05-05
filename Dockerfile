FROM golang:1.24-alpine

WORKDIR /app
COPY . .
RUN go mod download
COPY . .
RUN go build -o main
ENTRYPOINT [ "./main" ]
