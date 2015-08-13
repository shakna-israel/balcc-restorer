#!/bin/sh

cd core/boot/core
sudo find | sudo cpio -o -H newc | gzip -2 > ../core.gz
cd ..
advdef -z4 core.gz
cd ../..
sudo mkisofs -l -J -R -V TC-custom -no-emul-boot -boot-load-size 4 -boot-info-table -b boot/isolinux/isolinux.bin -c boot/isolinux/boot.cat -o balcc-restorer.iso core
