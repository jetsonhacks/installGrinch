
# Download the Grinch kernel files
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/zImage
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/jetson-tk1-grinch-21.3.4-modules.tar.bz2
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/jetson-tk1-grinch-21.3.4-firmware.tar.bz2




md5sum zImage 
correctSum = "a4a4ea10f2fe74fbb6b10eb2a3ad5409"
MD5 = _(md5sum 'zImage' | cut -d ' ' -f 1)

