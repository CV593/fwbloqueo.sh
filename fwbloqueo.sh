IPTABLES=/sbin/iptables
$IPTABLES -A INPUT -i enp0s3 -p ICMP -j DROP
$IPTABLES -A INPUT -i enp0s8 -s 15.10.150.0/24 -p ICMP -j DROP
echo "reglas de bloqueo ejecutadas correctamente"
