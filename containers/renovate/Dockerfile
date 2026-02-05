FROM docker.io/renovate/renovate:43

ARG KUBECTL_VERSION=v1.35.0
ARG HELM_VERSION=v3.19.4

USER root
RUN curl -fsSL -o /usr/local/bin/kubectl https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x /usr/local/bin/kubectl
RUN curl -fsSL https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz | tar -xz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm && \
    rm -r linux-amd64
RUN kubectl version --client=true && helm version

USER ubuntu
