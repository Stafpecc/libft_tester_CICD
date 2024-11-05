FROM gcc:latest

RUN apt-get update && apt-get install -y \
    valgrind

WORKDIR /Rank_0

COPY . .

CMD ["make", "CC=cc", "all"]
