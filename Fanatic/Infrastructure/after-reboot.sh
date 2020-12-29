#!/bin/sh
sudo sysctl -w vm.max_map_count=262144
# Uncomment when dev environment
# sudo mount -t ntfs /dev/sda1 /mnt/data
