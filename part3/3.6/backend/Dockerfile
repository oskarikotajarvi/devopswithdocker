# Builder
FROM golang:alpine as builder
# Install git and build dependencies
RUN apk update && apk add --no-cache git && \
    adduser --disabled-password --gecos "" --home "/nonexistent" --shell "/sbin/nologin" --no-create-home --uid 10001 appuser
# Workdir
WORKDIR /go/src/app
# COPY
COPY . .
# Build the binary
RUN CGO_ENABLED=0 go install -ldflags '-extldflags "-static"' -tags timetzdata

# Scratch image
FROM scratch
# Copy the binary and necessary files for user
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group
COPY --from=builder /go/bin/server /server
# Set user as non privileged user
USER appuser
# Run the binary
ENTRYPOINT ["/server"]
