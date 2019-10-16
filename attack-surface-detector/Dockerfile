FROM openjdk:10
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

ENV VERSION 1.3.5
ENV SHASUM 438883ad6ec59e0b038a67d89df28e1deb74beb8ccec8516204db687b83df25d

RUN wget -q -O /opt/attack-surface-detector-cli.jar "https://github.com/secdec/attack-surface-detector-cli/releases/download/v${VERSION}/attack-surface-detector-cli-${VERSION}.jar" \
 && echo "${SHASUM}  /opt/attack-surface-detector-cli.jar" | shasum -a 256 -c -

ENTRYPOINT ["java", "-jar", "/opt/attack-surface-detector-cli.jar"]
