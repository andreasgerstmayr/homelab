FROM alpine AS builder
RUN apk add --no-cache go
RUN go install github.com/open-telemetry/opentelemetry-collector-contrib/cmd/telemetrygen@v0.92.0

FROM alpine
RUN apk add --no-cache curl
COPY --from=builder /root/go/bin/telemetrygen /usr/bin/telemetrygen
CMD ["/bin/sleep", "infinity"]
