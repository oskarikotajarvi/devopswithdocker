# Golang image
FROM golang:1.16-alpine
# Working directory
WORKDIR /usr/src/app

COPY . .

RUN go mod download

RUN apk update && apk add build-base && \
    go build && go test -v ./... && \
    adduser -D appuser && chown -R appuser . && \
    apk del build-base && rm -rf /var/cache/apk/*

# Set user
USER appuser

# CMD
CMD ["./server"]
