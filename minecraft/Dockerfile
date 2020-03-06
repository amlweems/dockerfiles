FROM openjdk:8-alpine
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN apk --update add ca-certificates java-cacerts curl

# version 1.15.2 (src: https://mcversions.net)
ARG VERSION=bb2b6b1aefcd70dfd1892149ac3a215f6c636b07

RUN wget -q -O /opt/server.jar "https://launcher.mojang.com/v1/objects/${VERSION}/server.jar"
WORKDIR /data
CMD ["java", "-Xmx8096M", "-Xms8096M", "-jar", "/opt/server.jar", "nogui"]