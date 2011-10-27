#!/bin/bash

IP="$1"
HOSTNAME="$2"

MASTER="/repo/ks/master.cfg"
FILE="/repo/ks/$IP-ks.cfg"

cp "$MASTER" "$FILE"

sed -i'' "s/newhost/$HOSTNAME/g" "$FILE"
sed -i'' "s/newip/$IP/g" "$FILE"
