# Base image
FROM ubuntu:18.04

# Workdir
WORKDIR /usr/src/app

# Copy inputs.sh
COPY inputs.sh .

# Make inputs sh executable
RUN chmod +x inputs.sh

# Install curl
RUN apt-get update && apt-get install curl -y

# CMD inputs
CMD ./inputs.sh
