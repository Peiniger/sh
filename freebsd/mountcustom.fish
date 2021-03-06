#!/usr/local/bin/fish

################################################################################
# Author: Andy Nagels
# Date: 2015-08-01
#
# mountcustom.fish:
# Script that allows mounting of discs in an easy way.
################################################################################

set DATEFORMAT "%Y-%m-%d"
set TIMEFORMAT "%H:%M"
set KEYLOCATION "/bootdir/boot/"

switch $argv[1]
case "-h"
    echo "mountcustom.fish [-h|tar00|data01]"
    echo "Note: Needs to be run as root."
case "tar00"
    echo Mounting tar00...
    geli attach -k "$KEYLOCATION/encryption_tar00.key" "/dev/da0p1"
    zpool import tar00
    echo Done. 
    true
case "data01"
    echo Mounting data01...
    geli attach /dev/ada2
    geli attach /dev/ada3
    zpool import data01
    echo Done. 
    true
case '*'
    echo Unknown option $argv[1].
    false
end
