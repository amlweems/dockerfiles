FROM openjdk:10
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

ENV VERSION 0.150
ENV SHASUM d2755995ba1f3994d71d1905544b250c49ac6529433eb4383923430b6f109826

RUN wget -q -O /opt/cfr.jar "https://github.com/leibnitz27/cfr/releases/download/${VERSION}/cfr-${VERSION}.jar" \
 && echo "${SHASUM}  /opt/cfr.jar" | shasum -a 256 -c -

ENTRYPOINT ["java", "-jar", "/opt/cfr.jar"]
