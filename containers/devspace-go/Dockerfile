FROM golang:1.24

RUN mkdir        /workspace /.devspace /.cache && \
    chgrp -R 0   /workspace /.devspace /.cache && \
    chmod -R g=u /workspace /.devspace /.cache

WORKDIR /workspace

COPY entrypoint /entrypoint
COPY devspace_start.sh /devspace_start.sh
ENTRYPOINT ["/entrypoint"]
