#!/bin/sh

############################
echo "Checking for acpi..."

if ! type "acpi" > /dev/null; then
  sudo apt-get install acpi
fi

echo "\nDone dependencies"
############################
echo "\nMoving files..."

cd ..
cat batman/configs.txt >> ~/.bashrc
mv batman ~/bin/batman

############################
cat batman/nanananana.txt
sudo rm -r batman
