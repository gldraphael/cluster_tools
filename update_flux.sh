#!/bin/bash

# Documentation: https://fluxcd.io/flux/installation/#install-the-flux-cli

curl -s https://fluxcd.io/install.sh > install_flux.sh

chmod +x install_flux.sh
./install_flux.sh $HOME/.local/bin

rm install_flux.sh
