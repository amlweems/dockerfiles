FROM openjdk:10
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

ENV VERSION 0.151
ENV SHASUM 316e9015b9af2953fcff4fe86bf3bba705f32e7cd25bd6e535c698de8a25e837

RUN wget -q -O /opt/cfr.jar "https://github.com/leibnitz27/cfr/releases/download/${VERSION}/cfr-${VERSION}.jar" \
 && echo "${SHASUM}  /opt/cfr.jar" | shasum -a 256 -c -

ENTRYPOINT ["java", "-jar", "/opt/cfr.jar"]
