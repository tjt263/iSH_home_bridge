#!/bin/sh

# ---------------------------------------------
# 1) Explain first mount step
echo ""
echo "Step 1:"
echo "A Files picker will appear."
echo "Please select your base 'On My iPhone' folder (not a subfolder)."
echo "This will store a backup of your current /root as 'root_backup.tar.gz'."
echo "Continuing in 5 seconds..."
sleep 5

# ---------------------------------------------
# 2) Mount 'On My iPhone' at /mnt for backup
mkdir -p /mnt
mount -t ios . /mnt

# Create the backup tarball
tar czf /mnt/root_backup.tar.gz -C / root
echo "Backup complete: 'On My iPhone/root_backup.tar.gz'"
umount /mnt

# ---------------------------------------------
# 3) Explain second mount step
echo ""
echo "Step 2:"
echo "The Files picker will appear again."
echo "Please select the SAME base 'On My iPhone' folder."
echo "This will be mounted at /root, then your old files will be restored inside '/root/iSH'."
echo "Continuing in 5 seconds..."
sleep 5

# ---------------------------------------------
# 4) Mount 'On My iPhone' at /root
mount -t ios . /root

# Make the clean iSH subfolder inside 'On My iPhone'
mkdir -p /root/iSH

# ---------------------------------------------
# 5) Move backup tar into iSH subfolder and unpack
mv /root/root_backup.tar.gz /root/iSH/
tar xzf /root/iSH/root_backup.tar.gz -C /root/iSH
rm /root/iSH/root_backup.tar.gz

# ---------------------------------------------
# 6) Update .profile safely
if grep -q "^export HOME=" /root/iSH/.profile; then
    sed -i.bak 's|^export HOME=.*|export HOME=/root/iSH|' /root/iSH/.profile
else
    echo 'export HOME=/root/iSH' >> /root/iSH/.profile
fi

export HOME=/root/iSH

echo ""
echo "Setup complete."
echo "Your shell ~ now maps to 'On My iPhone/iSH'."
echo "Old files restored, .profile updated safely."
