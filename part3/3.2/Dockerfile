FROM ubuntu:18.04

WORKDIR /

RUN apt update && apt install docker.io -y

COPY . .

ENTRYPOINT ["./builder.sh"]
