#!/usr/bin/env bash
set -e

# ---- CONFIG ----
RG="Kiran_1805-API"
ACR="demoacr94"
IMAGE="demo-app:v1"
REPO_URL="https://github.com/shrishobana-thiyagarajan/azure-demo-app.git"

echo "Using RG=$RG ACR=$ACR IMAGE=$IMAGE"

# (Optional) confirm subscription
# az account show
# az account set --subscription "Subscription 6"

echo "Creating ACR (if not exists)..."
az acr show -n "$ACR" >/dev/null 2>&1 || az acr create -g "$RG" -n "$ACR" --sku Basic

echo "Building image in ACR from GitHub repo..."
az acr build --registry "$ACR" --image "$IMAGE" "$REPO_URL"

echo "Done. Verify repositories:"
az acr repository list --name "$ACR" --output table
