FROM openjdk:10
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

ENV VERSION 0.137
ENV SHASUM e5654c7210954f6faefbc716f9c7b2963d6f0106

RUN wget -q -O /opt/cfr.jar "https://www.benf.org/other/cfr/cfr-${VERSION}.jar" \
 && echo "${SHASUM}  /opt/cfr.jar" | sha1sum -c -

ENTRYPOINT ["java", "-jar", "/opt/cfr.jar"]
