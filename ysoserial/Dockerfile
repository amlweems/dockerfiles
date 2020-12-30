FROM openjdk:8

ENV VERSION=4df2ee2bb5
RUN wget -q -O /ysoserial.jar \
  "https://jitpack.io/com/github/frohoff/ysoserial/master-SNAPSHOT/ysoserial-master-${VERSION}-1.jar"

ENTRYPOINT ["java", "-jar", "/ysoserial.jar"]
