
(
echo o
echo n 
echo p
echo 1
echo
echo
echo w
) | fdisk /dev/sda

mkfs.ext4 /dev/sda

mount /dev/sda /mnt 

echo | pacstrap -K /mnt base linux linux-firmware

arch-chroot /mnt 

mkinitcpio -p linux 


