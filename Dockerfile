FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare \
    github.com/mastercactapus/caddy2-proxyprotocol

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
