#!/usr/bin/env bash 

# growpart is done in initramfs, growroot by systemd
mv /etc/cloud/cloud.cfg /etc/cloud/cloud.cfg.bak
cat /etc/cloud/cloud.cfg.bak | grep -v "^ - growpart$" | grep -v "^ - resizefs$" | grep -v "^ - ntp$" >/etc/cloud/cloud.cfg  
rm /etc/cloud/cloud.cfg.bak 
