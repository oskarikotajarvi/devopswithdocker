# Image
FROM node:14.18.2-alpine3.13

# Workdir
WORKDIR /usr/src/app

# Copy the app (this propably has unnecessary stuff in it...)
COPY . .

run npm install -g serve && npm install && npm run build && \
    adduser -D appuser && chown -R appuser:appuser /usr/src/app

USER appuser

# CMD
CMD ["serve", "-s", "-l", "5000", "build"]


