# Install
install
text
reboot
cdrom
zerombr
skipx
bootloader --location=mbr
firstboot --disabled

# Regional settings
lang en_GB.UTF-8
keyboard uk
timezone UTC --isUtc

# Network
network --bootproto=dhcp
firewall --enabled --service=ssh

# Partitioning
clearpart --all --initlabel
part / --fsoptions=discard --fstype=ext4 --grow --size=1
part swap --size=512

# Authtentication
rootpw password
authconfig --enableshadow --passalgo=sha512

# install only base packages and openssh
%packages --nobase
@core
openssh-server
openssh-clients
qemu-guest-agent
-NetworkManager
-aic94xx-firmware
-alsa-firmware
-alsa-lib
-alsa-tools-firmware
-biosdevname
-iprutils
-ivtv-firmware
-iwl100-firmware
-iwl1000-firmware
-iwl105-firmware
-iwl135-firmware
-iwl2000-firmware
-iwl2030-firmware
-iwl3160-firmware
-iwl3945-firmware
-iwl4965-firmware
-iwl5000-firmware
-iwl5150-firmware
-iwl6000-firmware
-iwl6000g2a-firmware
-iwl6000g2b-firmware
-iwl6050-firmware
-iwl7260-firmware
-libertas-sd8686-firmware
-libertas-sd8787-firmware
-libertas-usb8388-firmware
-plymouth
%end

