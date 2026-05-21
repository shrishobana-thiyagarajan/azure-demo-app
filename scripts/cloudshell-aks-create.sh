#!/usr/bin/env bash
set -e

# ---- CONFIG ----
RG="Kiran_1805-API"
AKS="demo-aks"

echo "Creating AKS cluster..."
az aks create -g "$RG" -n "$AKS" --node-count 1 --generate-ssh-keys

echo "Getting kubeconfig credentials..."
az aks get-credentials -g "$RG" -n "$AKS" --overwrite-existing

echo "Cluster context:"
kubectl config current-context
kubectl get nodes
