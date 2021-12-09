# Builder
FROM node:14.18.2-alpine3.13 AS builder
# Workdir
WORKDIR /usr/src/app
# Copy the app
COPY . .
# Install dependencies and build the app
RUN npm install && npm run build && \
    adduser -D appuser && chown -R appuser:appuser /usr/src/app

# The container
FROM node:14.18.2-alpine3.13
WORKDIR /usr/src/app
EXPOSE 5000
# Install serve
RUN npm install -g serve
# Copy the built app and user from builder
COPY --from=builder /usr/src/app/build /usr/src/app/build
COPY --from=builder /etc/passwd /etc/passwd
# User
USER appuser
# Run serve
CMD ["serve", "-s", "-n", "-l" ,"5000", "build"]
