#!/bin/sh

############################
echo "Checking for acpi..."

if ! type "acpi" > /dev/null; then
  sudo apt-get install acpi
fi

echo "\nDone dependencies"
############################
echo "\nMoving files..."

############################
cat nanananana.txt
