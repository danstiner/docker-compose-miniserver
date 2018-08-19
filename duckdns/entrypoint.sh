#!/bin/sh

# Check required variables are avilabile
: "${DUCKDNS_DOMAINS:?Required environment variable of domain(s) to update.}"
: "${DUCKDNS_TOKEN:?Required environment variable of token to use for authentication.}"

# Run update once initially
/app/duckdns.sh

# Schedule future updates
crond -f
