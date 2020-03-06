FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN dotnet tool install ilspycmd -g --version 6.0.0.5559-preview2
ENTRYPOINT ["/root/.dotnet/tools/ilspycmd"]