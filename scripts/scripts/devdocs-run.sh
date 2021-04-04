#! /usr/bin/sh

echo "what do you want to install ?"
read nice

cd ~/devdocs/
thor docs:download $nice

rackup
$BROWSER localhost:9292
wait
