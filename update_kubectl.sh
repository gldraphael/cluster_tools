#!/bin/bash

# Documentation: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/

LATEST_VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)
echo "Latest stable version: $LATEST_VERSION"

curl -LO "https://dl.k8s.io/release/$LATEST_VERSION/bin/linux/amd64/kubectl"
chmod +x kubectl
mv ./kubectl ~/.local/bin/kubectl

kubectl version --client
