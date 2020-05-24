FROM openjdk:8-alpine
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN apk --update add ca-certificates java-cacerts curl

# snapshot version 20w21a (src: https://mcversions.net)
ARG VERSION=03b8fa357937d0bdb6650ec8cc74506ec2fd91a7

RUN wget -q -O /opt/server.jar "https://launcher.mojang.com/v1/objects/${VERSION}/server.jar"
WORKDIR /data
CMD ["java", "-Xmx8096M", "-Xms8096M", "-jar", "/opt/server.jar", "nogui"]
