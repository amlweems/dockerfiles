FROM debian

WORKDIR /opt/tools
RUN apt-get update \
 && apt-get install -y build-essential libcppunit-dev git \
 && git clone https://github.com/altf4/untwister \
 && cd untwister \
 && make

ENTRYPOINT ["/opt/tools/untwister/untwister"]
