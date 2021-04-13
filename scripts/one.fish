#! /usr/bin/fish

set I 0
while test 1000 < 100000
    sudo kill -USR1 153445
    sleep 1
end
