FROM alpine
RUN apk add --no-cache py3-netifaces
COPY multicast-relay/multicast-relay.py /
ENTRYPOINT ["python", "/multicast-relay.py", "--foreground"]
