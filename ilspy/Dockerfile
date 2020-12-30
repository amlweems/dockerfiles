FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN dotnet tool install ilspycmd -g --version 6.2.0.6124
ENTRYPOINT ["/root/.dotnet/tools/ilspycmd"]
