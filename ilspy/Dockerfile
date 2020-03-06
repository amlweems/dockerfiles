FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build
LABEL maintainer "Anthony Weems <amlweems@gmail.com>"

RUN dotnet tool install ilspycmd -g
ENTRYPOINT ["/root/.dotnet/tools/ilspycmd"]