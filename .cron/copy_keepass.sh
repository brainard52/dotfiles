#!/bin/bash

# This is a short script that I wrote to keep my keepass database in order after
# potentially disasterous loss of data that I managed to recover from.
# It's simple logic, so I do not believe I hold any ownership over the process
# that it takes. As such, this file is published under WTFPL.

MAIN_KEEPASS_DB="$HOME/.keepassxc.kdbx"
if [ ! -f $MAIN_KEEPASS_DB ]; then
    exit 1
fi

COPY_LOCATION="$HOME/Nextcloud/Keepass_backups"

LAST_COPY="$(ls -dt $COPY_LOCATION/* | head -n 1)"
if [ $LAST_COPY == "" ]; then
    exit 2
fi

if cmp -s $MAIN_KEEPASS_DB $LAST_COPY; then
    exit 0
else
    cp $MAIN_KEEPASS_DB $COPY_LOCATION/keepassxc_copy_$(date +%F_%H%I%M).kdbx
    exit 0
fi

