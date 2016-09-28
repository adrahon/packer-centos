# packer-el #

Packer scripts for CentOS

Heavily inspired by:
 - https://github.com/shiguredo/packer-templates
 - https://github.com/TelekomLabs/packer-rhel
 - https://github.com/boxcutter/centos
 - https://github.com/CentOS/sig-cloud-instance-build

## Usage ##

```
packer build centos-7.2-x86_64.json
```

# Reduce the file size
 
```
qemu-img convert -c -p -f qcow2 -O qcow2 -o cluster_size=2M centos-72-kvm/centos72 centos-72-kvm/centos72.qcow2
```

