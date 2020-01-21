FROM openjdk:10
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

ENV VERSION 0.148
ENV SHASUM 1407f91fe7f94ff700cc1c8d546986a3fc2554273f07bae664bd58b0d85fd012

RUN wget -q -O /opt/cfr.jar "https://www.benf.org/other/cfr/cfr-${VERSION}.jar" \
 && echo "${SHASUM}  /opt/cfr.jar" | shasum -a 256 -c -

ENTRYPOINT ["java", "-jar", "/opt/cfr.jar"]
