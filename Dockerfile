FROM ibmcom/ibm-cloud-developer-tools-amd64:latest AS build

ENV HELM_VERSION=3.0.0
ENV RELEASE_ROOT="https://get.helm.sh"
ENV RELEASE_FILE="helm-v${HELM_VERSION}-linux-amd64.tar.gz"

RUN wget ${RELEASE_ROOT}/${RELEASE_FILE} && tar -zxvf ${RELEASE_FILE} && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm
