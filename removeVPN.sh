#!/bin/sh

#  Detects new network hardware and creates a default network service on the hardware.
/usr/sbin/networksetup -detectnewhardware

IFS=$'\n'

# Loops through the list of network interfaces that containing VPN in their name.\
# Command is not case sensitive. Will detect VPN, vpn, VpN, vPn, extra
# Issues the command to delete interface containing VPN in name. 
for service in $(/usr/sbin/networksetup -listallnetworkservices | grep -i 'VPN' ); do
    /usr/sbin/networksetup -removenetworkservice "${service}"
done

# Loops through the list of network services containing interface type of L2TP
# Issues the command to delete interface of type L2TP. 
for service in $(/usr/sbin/system_profiler SPNetworkDataType | grep -B2 L2TP | head -n 1 | awk '{gsub(":", "", $1); print $1}' ); do
    /usr/sbin/networksetup -removenetworkservice "${service}"
done

# Loops through the list of network services and sets proxy(s) states of each interface to off
for service in $(/usr/sbin/networksetup -listallnetworkservices ); do
    /usr/sbin/networksetup -setftpproxystate "${service}" off
    /usr/sbin/networksetup -setwebproxystate "${service}" off
    /usr/sbin/networksetup -setsecurewebproxystate "${service}" off
    /usr/sbin/networksetup -setstreamingproxystate "${service}" off
    /usr/sbin/networksetup -setgopherproxystate "${service}" off
    /usr/sbin/networksetup -setsocksfirewallproxystate "${service}" off
    /usr/sbin/networksetup -setproxyautodiscovery "${service}" off
done

# /usr/sbin/networksetup -listallnetworkservices does not return interfaces of type IKIEv2
# the default service name for a IKIEv2 interface is VPN (IKEv2). So the first delete will work if the VPN name is not changed.

# Loops through the list of ifconfig interfaces that are type utun, and deletes those interfaces.
for service in $( ifconfig | grep "utun" | cut -f 1 -d ":" | grep '^u' ); do
    ifconfig "${service}" delete
done

exit 0
