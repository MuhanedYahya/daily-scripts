#!/bin/bash

#!/bin/bash
# Encrypt secret.yaml in current dir using local public key

CERT="$HOME/.local/files/sealed-secret-pub-key.pem"
INPUT="$(pwd)/secret.yaml"
OUTPUT="$(pwd)/ss.yaml"

kubeseal --scope namespace-wide --cert="$CERT" --format=yaml < "$INPUT" > "$OUTPUT"

echo "✅ Sealed secret created: $OUTPUT"
