FROM openjdk:17-alpine
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN apk --update add ca-certificates java-cacerts curl

# version 1.18 (src: https://mcversions.net)
ARG VERSION=3cf24a8694aca6267883b17d934efacc5e44440d

RUN wget -q -O /opt/server.jar "https://launcher.mojang.com/v1/objects/${VERSION}/server.jar"
WORKDIR /data
CMD ["java", "-Xmx8096M", "-Xms8096M", "-jar", "/opt/server.jar", "nogui"]
