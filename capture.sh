#!/bin/bash

# Ağ arayüzünü belirle (Değiştirebilirsiniz)
IFACE="eth0"

# Yakalanacak paket sayısı
PACKET_COUNT=10

# PCAP dosyasının adı
PCAP_FILE="capture.pcap"

echo "Capturing $PACKET_COUNT packets from interface $IFACE..."

# Paketleri yakala ve dosyaya yaz
sudo tcpdump -i "$IFACE" -c "$PACKET_COUNT" -w "$PCAP_FILE"

echo "Capture complete! Saved to $PCAP_FILE"

# Dosyayı incelemek için aşağıdaki komut ile ilk 10 kaydı göster
echo "Displaying first 10 packets from the capture file:"
tcpdump -r "$PCAP_FILE" | head -10
