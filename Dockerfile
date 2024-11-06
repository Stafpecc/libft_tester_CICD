FROM gcc:14.2-bookworm

CMD ["make", "CC=cc", "all"]

# hadolint ignore=SC2086,DL3008,SC2028,DL3009
RUN apt-get update && \
    apt-get install --no-install-recommends -y valgrind && \
    mkdir /app

WORKDIR /app
