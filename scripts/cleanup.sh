#!/bin/sh
rm -rf /etc/yum.repos.d/{puppetlabs,epel}.repo
yum -y clean all
yum history new
truncate -c -s 0 /var/log/yum.log

# Configure network cards and remove device specific configuration
rm -f /etc/udev/rules.d/70-persistent-net.rules
touch /etc/udev/rules.d/70-persistent-net.rules

# remove uuid and mac address
sed -i '/UUID/d' /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-eth0

# remove machine-id
rm -f /etc/machine-id


