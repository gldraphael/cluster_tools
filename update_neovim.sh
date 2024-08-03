#!/bin/bash

# Documentation: https://github.com/neovim/neovim/blob/master/INSTALL.md#linux

set -e

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/.local/nvim
mv nvim.appimage ~/.local/nvim/
rm ~/.local/bin/nvim
ln -s ~/.local/nvim/nvim.appimage ~/.local/bin/nvim


# Note:
# If you see the following error:
# 
#       dlopen(): error loading libfuse.so.2
#
#       AppImages require FUSE to run.
#       You might still be able to extract the contents of this AppImage
#       if you run it with the --appimage-extract option.
#       See https://github.com/AppImage/AppImageKit/wiki/FUSE
# 
# run:
# 
#       sudo apt install libfuse2
