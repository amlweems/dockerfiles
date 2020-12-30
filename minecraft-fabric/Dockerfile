FROM openjdk:8-alpine
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN apk --update add ca-certificates java-cacerts curl

WORKDIR /opt
RUN wget -q -O /opt/fabric.jar "https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.6.1.51/fabric-installer-0.6.1.51.jar" \
 && java -jar /opt/fabric.jar server -downloadMinecraft -mcversion 1.16.1

COPY data /data
RUN chown -R 1337:1337 /data
WORKDIR /data
USER 1337:1337

# version 1.16.1 (src: https://mcversions.net)
ARG VERSION=a412fd69db1f81db3f511c1463fd304675244077

RUN wget -q -O /data/server.jar        "https://launcher.mojang.com/v1/objects/${VERSION}/server.jar" \
 && wget -q -O /data/mods/lithium.jar  "https://github.com/jellysquid3/lithium-fabric/releases/download/mc1.16.1-0.5.1/lithium-fabric-mc1.16.1-0.5.1.jar" \
 && wget -q -O /data/mods/phosphor.jar "https://github.com/jellysquid3/phosphor-fabric/releases/download/mc1.16.1-v0.6.0/phosphor-fabric-mc1.16.1-0.6.0+build.7.jar" \
 && wget -q -O /data/mods/sodium.jar   "https://github.com/jellysquid3/sodium-fabric/releases/download/mc1.16.1-0.1.0/sodium-fabric-mc1.16.1-0.1.0.jar"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
