FROM ubuntu
WORKDIR /app
USER root

COPY entrypoint.sh ./


EXPOSE 80

RUN apt-get update && apt-get install -y wget curl unzip iproute2 systemctl

ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]
