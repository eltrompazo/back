#!/bin/bash

IFACE=$(/usr/sbin/ifconfig | grep nordlynx | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "nordlynx" ]; then
    echo "%{F#D8DEE9}󰚌 %{F#DEE1E6}$(/usr/sbin/ifconfig nordlynx | grep "inet " | awk '{print $2}')%{u-}"
else
    echo "%{F#707880}󰚌 %{F#707880}"
fi
