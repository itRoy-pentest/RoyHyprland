# Step 1 - Authorization to execute

```
sudo chmod +x /usr/local/bin/vpn-dns-helper
sudo chmod +x /usr/local/bin/qemu-net-helper
```

# Step 2 - Add alias to zsh

```
nvim ~/.zshrc
```
Add to end string
```
alias vpn-fix='sudo vpn-dns-helper fix'
alias vpn-restore='sudo vpn-dns-helper restore'
alias qemu-net='sudo qemu-net-helper'
```
```
source ~/.zshrc
```

# Step 3 - How to using

## Activate vpn
Run - `vpn-fix`
Click connection to amnezia

## Deactivate vpn
Run - vpn-restore
Click deactivate to amnezia

# Step 3 - How to start qemu

## Install qemu
```
sudo pacman -S dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S ebtables iptables
sudo pacman -S libguestfs
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service
sudo systemctl status libvirtd.service
sudo usermod -a -G libvirt $(whoami)
sudo systemctl restart libvirtd.service
```

## After start virtual machine
Run - qemu-net start
Run virtual machine

## Deactivate virtual machine
Run - qemu-net stop






