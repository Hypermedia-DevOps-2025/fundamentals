ARG BASE_IMAGE=nginx:1.25.2-alpine@sha256:7272a6e0f728e95c8641d219676605f3b9e4759abbdb6b39e5bbd194ce55ebaf
FROM ${BASE_IMAGE}

ARG APP_VERSION=v1
LABEL version="${APP_VERSION}"
COPY index.html /usr/share/nginx/html/index.html



