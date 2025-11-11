#!/bin/bash

NAMESPACE=${1:-}  # optional namespace
OUTPUT_FILE=secret.yaml

if [[ -n "$NAMESPACE" ]]; then
  kubectl create secret generic shared-appsettings \
    --from-file=appsettings.json=appsettings.json \
    --namespace="$NAMESPACE" \
    --dry-run=client -o yaml > "$OUTPUT_FILE"
else
  kubectl create secret generic shared-appsettings \
    --from-file=appsettings.json=appsettings.json \
    --dry-run=client -o yaml | \
    yq 'del(.metadata.namespace)' > "$OUTPUT_FILE"
fi

echo "✅ Secret manifest generated at $OUTPUT_FILE ${NAMESPACE:+(namespace: $NAMESPACE)}"