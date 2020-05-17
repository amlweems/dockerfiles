FROM openjdk:8-alpine
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN apk --update add ca-certificates java-cacerts curl

# snapshot version 20w20b (src: https://mcversions.net)
ARG VERSION=0393774fb1f9db8288a56dbbcf45022b71f7939f

RUN wget -q -O /opt/server.jar "https://launcher.mojang.com/v1/objects/${VERSION}/server.jar"
WORKDIR /data
CMD ["java", "-Xmx8096M", "-Xms8096M", "-jar", "/opt/server.jar", "nogui"]