#!/bin/sh
# Customize lsb-release
sed -i 's/DISTRIB_ID=.*/DISTRIB_ID=GojOS/' /etc/lsb-release
sed -i 's/DISTRIB_RELEASE=.*/DISTRIB_RELEASE=rolling/' /etc/lsb-release
sed -i 's/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION="GojOS Linux"/' /etc/lsb-release

# Customize os-release
sed -i 's/NAME=.*/NAME="GojOS Linux"/' /usr/lib/os-release
sed -i 's/PRETTY_NAME=.*/PRETTY_NAME="GojOS Linux"/' /usr/lib/os-release
sed -i 's/ID=.*/ID=gojos/' /usr/lib/os-release
sed -i 's/ID_LIKE=.*/ID_LIKE=arch/' /usr/lib/os-release
sed -i 's|HOME_URL=.*|HOME_URL="https://github.com/arithefirst/GojOS"|' /usr/lib/os-release
