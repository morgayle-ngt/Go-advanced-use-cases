# Dockerfile for GitHub Action
FROM golang:1.15-alpine

WORKDIR /action

COPY . .

RUN go build -o /bin/action

ENTRYPOINT ["/bin/action"]
