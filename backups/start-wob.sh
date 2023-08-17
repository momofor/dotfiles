#!/bin/sh
# set up wob for volume bar
mkfifo /tmp/wobpipe
tail -f /tmp/wobpipe | wob
