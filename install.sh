#!/bin/sh

############################

echo "Checking for acpi..."

if ! type "acpi" > /dev/null; then
  sudo apt-get install acpi
fi

echo "\nDone dependencies"

############################

echo "\nMoving files..."
current_path=$(pwd)
cat $current_path/configs.txt >> ~/.bash_profile

mkdir ~/bin
mkdir ~/bin/batman
echo $current_path
cd $current_path
mv $current_path/plugin.sh ~/bin/batman/plugin.sh

echo "\n Done! \n"

############################

while IFS='' read -r line || [[ -n "$line" ]]; do
  echo "$line"
done < "$current_path/nanananana.txt"

cd ..
rm -r $current_path
