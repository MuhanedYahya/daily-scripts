#!/bin/bash

set -euo pipefail

PFX_FILE="${1:-cert.pfx}"
PASSWORD="${2:-}"

if [ ! -f "$PFX_FILE" ]; then
  echo "❌ File not found: $PFX_FILE"
  echo "Usage: $0 <path-to.pfx> [password]"
  exit 1
fi

echo "🔹 Extracting from $PFX_FILE"

if [ -n "$PASSWORD" ]; then
  PASS_OPT="-password pass:$PASSWORD"
else
  PASS_OPT=""
fi

# Extract private key
openssl pkcs12 -in "$PFX_FILE" $PASS_OPT -nocerts -nodes -out cert.key

# Extract certificate
openssl pkcs12 -in "$PFX_FILE" $PASS_OPT -clcerts -nokeys -out cert.crt

chmod 600 cert.key
echo "✅ Done: cert.key and cert.crt created"