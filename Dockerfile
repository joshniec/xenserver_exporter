ARG ARCH="amd64"
ARG OS="linux"
FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest
LABEL maintainer="Josh Niec <josh@niec.us>"

ARG ARCH="amd64"
ARG OS="linux"
COPY .build/${OS}-${ARCH}/xenserver_exporter /bin/xenserver_exporter
COPY LICENSE                                /LICENSE

USER       nobody
ENTRYPOINT ["/bin/xenserver_exporter"]
EXPOSE     9128
