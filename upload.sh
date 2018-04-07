#!/bin/sh -ex

USERNAME=${USERNAME:=anonymous}
PASSWORD=${PASSWORD=dput@packages.debian.org}
REMOTE_DIR=${REMOTE_DIR=~agornostal/ulauncher-dev}
DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

dd if=/dev/zero of=$DATE.dat bs=2M count=24

lftp -c "
set net:timeout 30;
set net:max-retries 1;
open -u $USERNAME,$PASSWORD ppa.launchpad.net;
put -O $REMOTE_DIR $DATE.dat"
