FROM quay.io/centos/centos:stream9
RUN dnf install -y dnsmasq
ENTRYPOINT ["/usr/sbin/dnsmasq", "--keep-in-foreground", "--log-facility=-"]
