#!/usr/bin/env bash
set -e

RG="Kiran_1805-API"
AKS="demo-aks"
ACR="demoacr94"

echo "Deleting AKS..."
az aks delete -g "$RG" -n "$AKS" --yes || true

echo "Deleting ACR..."
az acr delete -g "$RG" -n "$ACR" --yes || true

echo "Done."
