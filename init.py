#!/usr/bin/python


# https://github.com/ldx/python-iptables

import iptc
rule = iptc.Rule()
rule.in_interface = "eth0"
rule.src = "192.168.1.0/255.255.255.0"
rule.protocol = "tcp"
