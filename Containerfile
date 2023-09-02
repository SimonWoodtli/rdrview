FROM alpine:latest AS builder
USER root

ADD build.sh /tmp/build.sh

RUN /tmp/build.sh

FROM scratch
# Copy binary
COPY --from=builder /usr/local/bin/rdrview /bin/rdrview
