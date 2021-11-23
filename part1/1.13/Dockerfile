# Golang image
FROM golang:1.16.10-buster

# Working directory
WORKDIR /usr/src/app

# Expose port
EXPOSE 8080

# Copy the application
COPY . .

# Build the binary
RUN go build

# Run tests
RUN go test ./...

# CMD
CMD ["./server"]
