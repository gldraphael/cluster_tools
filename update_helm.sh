#!/bin/bash

# Documentation: https://helm.sh/docs/intro/install/

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3   

chmod +x get_helm.sh
HELM_INSTALL_DIR=~/.local/bin ./get_helm.sh --no-sudo

rm get_helm.sh
