FROM openjdk:8-alpine
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN apk --update add ca-certificates java-cacerts curl

# snapshot version 20w10a (src: https://mcversions.net)
ARG VERSION=b9310c21839112d6758b0b245998f57a2b9a0500

RUN wget -q -O /opt/server.jar "https://launcher.mojang.com/v1/objects/${VERSION}/server.jar"
WORKDIR /data
CMD ["java", "-Xmx8096M", "-Xms8096M", "-jar", "/opt/server.jar", "nogui"]