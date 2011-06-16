#!/bin/sh
#
# $scrotwm: screenshot.sh,v 1.3 2009/09/13 22:28:53 marco Exp $

scrot --quality 100 '%d-%m-%Y_%H_%M_%S.png' -e 'mv $f ~/Images/myscreens'

