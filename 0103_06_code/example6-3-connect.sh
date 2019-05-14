#!/bin/bash

hour=`/bin/date +"%H"`
if [ $hour -lt 6 ]
then
    msg1="You're up at a weird hour"
elif [ $hour -le 12 ]
then
    msg1="Goodi morning"
elif [ $hour -lt 18 ]
then
    msg1="Good afternoon"
else
    msg1="Good evening"
fi

OPENVPN_MSG1="$msg1 $common_name"
OPENVPN_MSG2=`/bin/date +"Local time at the VPN server is %H:%M:%S"`

# now write out the extra configuration lines to $1
echo "push \"setenv-safe MSG1 '$OPENVPN_MSG1'\"" > $1
echo "push \"setenv-safe MSG2 '$OPENVPN_MSG2'\"" >> $1
