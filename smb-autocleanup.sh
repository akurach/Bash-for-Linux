#!/bin/sh

find /opt/share/minenergo/.recycle/* -atime +30 -exec rm -rf '{}' \;
find /opt/share/minenergo/ -depth -type d -empty -exec rmdir {} \;
