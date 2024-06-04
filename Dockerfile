FROM squidfunk/mkdocs-material:9.5.25
LABEL maintainer="Aaron Turner"

COPY action.sh /action.sh

RUN apk add --no-cache bash build-base linux-headers && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
