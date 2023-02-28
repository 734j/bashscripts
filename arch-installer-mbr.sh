
(
echo o
echo n 
echo p
echo 1
echo
echo
echo w
) | fdisk /dev/sda

echo y | mkfs.ext4 /dev/sda

mount /dev/sda /mnt 

echo | pacstrap -K /mnt base linux linux-firmware

arch-chroot /mnt localectl set-locale LANG=sv_SE.UTF-8
arch-chroot /mnt locale-gen

arch-chroot /mnt echo | passwd

echo "This is a test"




