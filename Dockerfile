FROM ibmcom/ibm-cloud-developer-tools-amd64:latest AS build

RUN wget https://get.helm.sh/helm-v3.0.0-linux-amd64.tar.gz |tar zxvz && \
    mv linux-amd64/helm /usr/bin/helm && \
    chmod +x /usr/bin/helm
