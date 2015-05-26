# installGrinch
Installation script for the Grinch Kernel on the NVIDIA Jetson TK1.

The Grinch Kernel for L4T provides fixes, configuration, module and firmware support to the stock kernel. There are over 60 changes and additions to the kernel and module system. The Grinch is written and supported by Jetson Forum user Santyago. For more information, supported devices, and support for the Grinch Kernel, please see the NVIDIA Jetson Forum:

https://devtalk.nvidia.com/default/topic/823132/embedded-systems/-customkernel-the-grinch-21-3-4-for-jetson-tk1-developed/ 

This installation script is for Linux for Tegra (L4T) 21.3, which must be installed on the Jetson before running the install script.

To install the Grinch Kernel:

$ ./installGrinch.sh

After the install script completes, reboot the Jetson TK1.

Note: If you want to enable SPI (the install scripts do not do this by default):

$ wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/tegra124-jetson_tk1-pm375-000-c00-00.dtb -O /boot/tegra124-jetson_tk1-pm375-000-c00-00.dtb

Note 2:
There is an additional script which installs the Grinch kernel, but does not download the needed files first. This is for the case where the files need to be manually downloaded, or have been previously downloaded. This script expects the kernel files to be in the same directory as the script. In order to run the script:

$ ./installGrinchNoDownload.sh

The script will examine the checksums for the files to make sure that they are correct.

Because these scripts will replace the stock kernel with a new one, it is important that the downloaded files have the correct checksum to ensure that they are not corrupted.
