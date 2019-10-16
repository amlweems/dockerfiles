FROM debian:latest

RUN apt-get update \
 && apt-get install qpdf -y \
 && echo '#!/bin/sh\n\
qpdf --qdf --object-streams=disable "$1" -' > /usr/bin/pdf-decode \
 && chmod +x /usr/bin/pdf-decode

ENTRYPOINT ["/usr/bin/pdf-decode"]