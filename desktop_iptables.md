# Firewall Rules for Desktop users

This Bash script contains a basic iptables firewall configuration designed to secure employees' laptops. These rules are intended to protect the computer, restrict access, and reject unauthorized network traffic.

## Usage

1. Make the script executable  
2. Run the script as a user with administrator (root) privileges to apply these rules. Make sure you are aware of the consequences of these changes.

## Rule Descriptions

- `iptables -F`: Clears all existing iptables rules.

- `iptables -A INPUT -i lo -ACCEPT` and `iptables -A OUTPUT -o lo -ACCEPT`: Allows traffic on the loopback interface, which is a standard practice to enable local communication on the device.

- `iptables -A INPUT -m state --state INVALID -j DROP` and `iptables -A OUTPUT -m state --state INVALID -j DROP`: Drops packets marked as "INVALID," helping to protect against malformed or invalid packets.

- `iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT` and `iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT`: Allows packets related to established connections (ESTABLISHED,RELATED) and new outgoing packets (NEW,ESTABLISHED,RELATED).

## Note

For any issues or suggestions, please feel free to create an issue on this repository.