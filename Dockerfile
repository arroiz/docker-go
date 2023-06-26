FROM golang:1.20-alpine as builder

WORKDIR /usr/src/app
COPY *.go .

RUN go build -v -o /usr/local/bin/app ./*.go

### Runner using the scratch image as base
FROM scratch as runner

WORKDIR /
COPY --from=builder /usr/local/bin/app /app

ENTRYPOINT ["/app"]