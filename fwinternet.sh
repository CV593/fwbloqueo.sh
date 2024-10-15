IPTABLES=/sbin/iptables
#$IPTABLES -A INPUT -i enp0s3 -p ICMP -j DROP
#$IPTABLES -A INPUT -i enp0s8 -s 10.10.10.0/24 -p ICMP -j DROP
$IPTABLES -t nat -A POSTROUTING -s 15.10.150.0/24 -o enp0s3 -j MASQUERADE
echo "reglas de internet ejecutadas correctamente"
