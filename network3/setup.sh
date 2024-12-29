#!/bin/bash

# Unduh dan ekstrak file node
echo "Downloading and extracting Network3 node..."
wget https://network3.io/ubuntu-node-v2.1.1.tar.gz
tar -xf ubuntu-node-v2.1.1.tar.gz

# Pindah ke direktori node
cd ubuntu-node

# Instal dependensi tambahan
echo "Installing required packages..."
apt install net-tools -y

# Jalankan manager.sh untuk mengatur node
echo "Starting Network3 node..."
sudo bash manager.sh up

# Dapatkan kunci node
sudo bash manager.sh key

# Tidur selama 360 hari (untuk demonstrasi, ini dapat diubah sesuai kebutuhan)
echo "Sleeping for 360 days..."
sleep $((360*24*60*60))
