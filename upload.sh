#!/bin/sh -ex

USERNAME=${USERNAME:=anonymous}
PASSWORD=${PASSWORD=dput@packages.debian.org}
REMOTE_DIR=${REMOTE_DIR=~agornostal/ulauncher-dev}
DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo $DATE > $DATE.txt

lftp -c "open -u $USERNAME,$PASSWORD ppa.launchpad.net; put -O $REMOTE_DIR $DATE.txt"
