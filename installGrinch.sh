#!/bin/sh
# Download the Grinch kernel files
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/zImage
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/jetson-tk1-grinch-21.3.4-modules.tar.bz2
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/jetson-tk1-grinch-21.3.4-firmware.tar.bz2

# Compare the md5sum checksum for the downloaded files to make sure that they are not corrupt
# check zImage
CSUM="a4a4ea10f2fe74fbb6b10eb2a3ad5409"
MD5=$(md5sum zImage | cut -d ' ' -f 1)
if [ "$MD5" != "$CSUM" ] 
then
  /bin/echo -e "\e[0;31mThe checksum does not match for the file 'zImage'.\e[0m" 
  echo "Correct checksum: "$CSUM
  echo "Checksum of downloaded file: "$MD5
  /bin/echo -e "\e[0;31mInstallation Aborted. Please try downloading file again and doing a manual installation.\e[0m"
  exit 1
fi
# check modules download
CSUM="3f84d425a13930af681cc463ad4cf3e6"
MD5=$(md5sum jetson-tk1-grinch-21.3.4-modules.tar.bz2 | cut -d ' ' -f 1)
if [ "$MD5" != "$CSUM" ] 
then
  /bin/echo -e "\e[0;31mThe checksum does not match for the file 'jetson-tk1-grinch-21.3.4-modules.tar.bz2'.\e[0m" 
  echo "Correct checksum: "$CSUM
  echo "Checksum of downloaded file: "$MD5
  /bin/echo -e "\e[0;31mInstallation Aborted. Please try downloading file again and doing a manual installation.\e[0m"
  exit 1
fi
# check firmware downloads
CSUM="f80d37ca6ae31d03e86707ce0943eb7f"
MD5=$(md5sum jetson-tk1-grinch-21.3.4-firmware.tar.bz2 | cut -d ' ' -f 1)
if [ "$MD5" != "$CSUM" ] 
then
  /bin/echo -e "\e[0;31mThe checksum does not match for the file 'jetson-tk1-grinch-21.3.4-modules.tar.bz2'.\e[0m" 
  echo "Correct checksum: "$CSUM
  echo "Checksum of downloaded file: "$MD5
  /bin/echo -e "\e[0;31mInstallation Aborted. Please try downloading file again and doing a manual installation.\e[0m"
  exit 1
fi
/bin/echo -e "\e[0;32mChecksum matches for downloaded files. Installation will now start.\e[0m"
sudo tar -C /lib/modules -vxjf jetson-tk1-grinch-21.3.4-modules.tar.bz2
sudo tar -C /lib -vxjf jetson-tk1-grinch-21.3.4-firmware.tar.bz2
sudo cp zImage /boot/zImage
/bin/echo -e "\e[0;32mGrinch Kernel Installed! Please Reboot.\e[0m"



