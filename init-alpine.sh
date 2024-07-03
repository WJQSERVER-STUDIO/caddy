#!/bin/sh

if [ ! -f /data/caddy/config/Caddyfile ]; then
    cp /data/caddy/Caddyfile /data/caddy/config/Caddyfile
fi

exec /data/caddy/caddy run --config /data/caddy/config/Caddyfile
