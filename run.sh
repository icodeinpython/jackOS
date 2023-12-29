set +av

cp bin/jackOS.bin iso/boot/jackOS.bin

grub-mkrescue -o jackOS.iso iso

qemu-system-i386 -cdrom jackOS.iso -monitor stdio -m 16M