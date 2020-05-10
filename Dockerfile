FROM 1.14.2-alpine3.11
WORKDIR /go
COPY . /go
RUN apk add --update git



FROM alpine:3.11.6
COPY --from=0 /go/app /app
CMD []