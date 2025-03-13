# Make sure airootfs scripts are executeable
chmod +x iso/releng/airootfs/root/customize_airootfs.d/*

# Run build scripts
echo -e "\x1b[34m[PREBUILD]\x1b[0m Running Pre-Build scripts"
chmod +x ./buildscripts/*
./buildscripts/0-download-icons.sh

# Build the ISO
echo -e "\x1b[34m[BUILDER]\x1b[0m Removing existing build dirs (if present)"

sudo rm -rf ./work ./out
echo -e "\x1b[34m[BUILDER]\x1b[0m Building GojOS Linux."

sudo mkarchiso -v -w ./work -o ./out ./iso/releng
echo -e "\x1b[34m[BUILDER]\x1b[0m BUILD COMPLETE."
