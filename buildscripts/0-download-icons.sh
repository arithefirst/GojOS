#!/bin/bash

# Remove existing icons dir
rm -rf iso/releng/airootfs/usr/share/icons/Colloid-*

# Install Colloid Icons
git clone 'https://github.com/vinceliuice/Colloid-icon-theme'
mkdir -p ./iso/releng/airootfs/usr/share/icons
./Colloid-icon-theme/install.sh -t default -d ./iso/releng/airootfs/usr/share/icons
rm -rf 'Colloid-icon-theme'