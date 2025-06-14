FROM caddy:2.10.0-alpine

COPY Caddyfile /etc/caddy/Caddyfile

RUN caddy fmt --overwrite /etc/caddy/Caddyfile

CMD caddy run --config /etc/caddy/Caddyfile --adapter caddyfile 2>&1