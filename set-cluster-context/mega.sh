#!/bin/bash

#!/bin/bash
# Copy mega.config to default kube config

SRC="$HOME/.kube/mega.config"
DST="$HOME/.kube/config"

cp "$SRC" "$DST"

echo "✅ mega kubeconfig is set"