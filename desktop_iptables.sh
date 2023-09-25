#!/bin/bash

iptables -F
iptables -A INPUT -i lo -ACCEPT
iptables -A OUTPUT -o lo -ACCEPT
iptables -A INPUT -m state --state INVALID -j DROP
iptables -A OUTPUT -m state --state INVALID -j DROP
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -P INPUT -j DROP
iptables -P OUTPUT -j DROP