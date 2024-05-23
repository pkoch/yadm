#!/usr/bin/env bash

set -ueo pipefail

IP="$(curl -s 'https://api4.ipify.org')"

RESULT="$(curl -s --request PUT \
  --url https://api.cloudflare.com/client/v4/zones/772b424d7f8ff14be92c7bef1519cc4b/dns_records/4d42b559f14f587f255c77b094f9d32b \
  --header 'Content-Type: application/json' \
  --header 'X-Auth-Email: cloudflare@pko.ch' \
  --header "X-Auth-Key: $(cat ~pkoch/secrets/cloudflare.api_key.global)" \
  --data '{
  "content": "'"$IP"'",
  "name": "bolota.pko.ch",
  "proxied": false,
  "type": "A",
  "ttl": 60
}')"

if [ "true" != "$(jq -r .success <<<"$RESULT")" ]; then
  echo "$RESULT"
  exit 1
fi
