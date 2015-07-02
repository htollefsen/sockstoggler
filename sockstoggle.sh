#!/bin/sh

SSH_HOST=localhost
SSH_PORT=22

PROXY_INTERFACE="Wi-Fi"
PROXY_HOST=127.0.0.1
PROXY_PORT=2001

if [[ $1 == "on" ]]; then
    sudo networksetup -setsocksfirewallproxy "$PROXY_INTERFACE" $PROXY_HOST $PROXY_PORT
    echo "Socksproxy enabled"

elif [[ $1 == "off" ]]; then
    sudo networksetup -setsocksfirewallproxystate "$PROXY_INTERFACE" off
    echo "Socksproxy disabled"

else 
    networksetup -getsocksfirewallproxy "$PROXY_INTERFACE"
fi

