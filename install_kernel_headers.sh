#!/bin/bash

# Run this script if the Google Cloud VM can't access its GPUs anymore. You can
# check this using `nvidia-smi`. One reason why the VM might not be able to find
# the GPU is because the kernel headers are missing.
#
# Approach taken from https://www.tecmint.com/install-kernel-headers-in-ubuntu-and-debian/
# Check if kernel headers are installed with
#   ls -l /usr/src/linux-headers-$(uname -r)
#
# It might also be possible to fix the issue by reinstalling the drivers installed
# by Google's DeepLearning VM through their own scripts:
#   bash /opts/deeplearning/uninstall-driver.sh && bash /opts/deeplearning/install-driver.sh

sudo apt update
sudo apt install linux-headers-$(uname -r)

