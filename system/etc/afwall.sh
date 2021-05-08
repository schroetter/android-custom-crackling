if [ -f "/data/local/afwall.custom.sh" ]
then
	source "/data/local/afwall.custom.sh"
fi

## [-11] Linux Kernel: ICMP(v6)
#iptables -w -A afwall -p icmp -m owner ! --uid-owner 0-999999999 -j ACCEPT
#ip6tables -w -A afwall -p icmpv6 -m owner ! --uid-owner 0-999999999 -j ACCEPT

# [1000] XTRA-Download (A-GPS): ems.schroetter.co.at (Port 443)
# [1000] Captive Portal Check: connectivitycheck.schroetter.co.at (Port 80 & 443)
iptables -w -A afwall -d 46.232.249.13 -p tcp --dport 80 -m owner --uid-owner 1000 -j ACCEPT
iptables -w -A afwall -d 46.232.249.13 -p tcp --dport 443 -m owner --uid-owner 1000 -j ACCEPT
ip6tables -w -A afwall -d 2a03:4000:2b:12a::1 -p tcp --dport 80 -m owner --uid-owner 1000 -j ACCEPT
ip6tables -w -A afwall -d 2a03:4000:2b:12a::1 -p tcp --dport 443 -m owner --uid-owner 1000 -j ACCEPT

# [1000] NTP
iptables -w -A afwall -p udp --dport 123 -m owner --uid-owner 1000 -j ACCEPT
ip6tables -w -A afwall -p udp --dport 123 -m owner --uid-owner 1000 -j ACCEPT
