# Gunakan Ubuntu 22.04 sebagai basis
FROM ubuntu:22.04

# Set lingkungan non-interaktif untuk menghindari prompt selama instalasi
ENV DEBIAN_FRONTEND=noninteractive

# Perbarui repositori dan instal dependensi yang diperlukan
RUN apt-get update && \
    apt-get install -y \
    wget \
    sudo \
    net-tools && \
    apt-get clean

# Buat direktori kerja
WORKDIR /root/network3

# Salin dan jalankan skrip setup
COPY setup.sh /root/network3/setup.sh
RUN chmod +x /root/network3/setup.sh
RUN /root/network3/setup.sh

# Berikan akses root
USER root

# Jalankan aplikasi utama
CMD ["bash", "-c", "sleep infinity"]
