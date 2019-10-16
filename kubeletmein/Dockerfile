FROM golang:alpine

RUN apk --update add git
RUN go get github.com/4armed/kubeletmein/cmd/kubeletmein \
 && go install github.com/4armed/kubeletmein/cmd/kubeletmein

ENTRYPOINT ["kubeletmein"]
