#!/usr/bin/python


# https://github.com/ldx/python-iptables

import iptc

def blockUser(userMac)

# Add a 'tag' to every connection from specified mac address
#$IPTABLES -t mangle -A internet -j MARK --set-mark 99
#$IPTABLES -t nat -A PREROUTING -m mark --mark 99 -p tcp --dport 80 -j DNAT --to-destination 10.0.0.1
#$IPTABLES -t filter -A FORWARD -m mark --mark 99 -j DROP
	
	rule = iptc.Rule()
	rule.protocol = "tcp"
	match = rule.create_match("mark")
	match.mark = userMac
