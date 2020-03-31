FROM golang AS build
RUN git clone -q --branch v0.1.5 https://github.com/zmap/zgrab2 /app
WORKDIR /app
RUN go get ./... \
 && make

FROM golang
COPY --from=build /app/zgrab2 /bin/
ENTRYPOINT ["/bin/zgrab2"]