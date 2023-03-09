ARG NODE_VERSION
ARG BUF_VERSION

FROM node:${NODE_VERSION}-alpine

# Base Tools
RUN apk update \
    && apk fix \
    && apk add bash wget curl groff jq less unzip zip openssl

# Protobuf
RUN apk add protoc

# Buf
RUN BIN="/usr/local/bin" \
    && curl -sSL "https://github.com/bufbuild/buf/releases/download/v${BUF_VERSION}/buf-$(uname -s)-$(uname -m)" -o "${BIN}/buf" \
    && chmod +x "${BIN}/buf"

# Remove cache
RUN rm -rf /var/cache/apk/*

LABEL maintainer="Bread God (https://github.com/Vipcube)"
