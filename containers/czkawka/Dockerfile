FROM rust:1.76-bookworm AS builder
RUN apt-get update && apt-get install -y libheif-dev

WORKDIR /app
ADD https://github.com/qarmin/czkawka/archive/refs/tags/6.1.0.tar.gz .
RUN tar --strip-components=1 -xf *.tar.gz
RUN cargo build --release --bin czkawka_cli --features heif


FROM rust:1.76-bookworm
RUN apt-get update && apt-get install -y libheif1
COPY --from=builder /app/target/release/czkawka_cli /usr/local/bin/czkawka_cli
ENTRYPOINT ["/usr/local/bin/czkawka_cli"]
