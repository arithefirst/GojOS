echo "REMOVING: Existing build dirs (if present)"
sudo rm -rf ./work ./out
echo "BUILDING: GojOS Linux."
sudo mkarchiso -v -w ./work -o ./out ./iso/releng
echo "BUILD COMPLETE."
