FROM openjdk:10
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

ARG VERSION=v2.1-20190905-lanchon
ARG BUILD=dex-tools-2.1-20190905-lanchon
WORKDIR /app
RUN wget -q https://github.com/DexPatcher/dex2jar/releases/download/${VERSION}/${BUILD}.zip \
 && unzip ${BUILD}.zip
ENV PATH /app/${BUILD}:${PATH}
ENTRYPOINT ["d2j-dex2jar.sh"]
