FROM openjdk:10
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

ENV VERSION 0.149
ENV SHASUM db683b5b3bc2c20fd2fabcc9d749d5b8bcbba736f334e5ac2092173242967aca

RUN wget -q -O /opt/cfr.jar "https://www.benf.org/other/cfr/cfr-${VERSION}.jar" \
 && echo "${SHASUM}  /opt/cfr.jar" | shasum -a 256 -c -

ENTRYPOINT ["java", "-jar", "/opt/cfr.jar"]
