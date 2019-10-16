FROM golang:buster

RUN apt-get update \
 && apt-get install -y build-essential cmake

WORKDIR /app
RUN git clone https://github.com/lunixbochs/usercorn \
 && cd usercorn \
 && make deps \
 && make

ENTRYPOINT ["/app/usercorn/usercorn"]
