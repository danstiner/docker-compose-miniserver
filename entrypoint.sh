#!/bin/sh

: "${DUCKDNS_DOMAIN:?Required environment variable of domain to update.}"
: "${DUCKDNS_TOKEN:?Required environment variable of token to use for authentication.}"

crond -f
