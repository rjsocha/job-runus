#!/bin/bash

[[ -d build ]] && rm -rf build
mkdir -p build
rsync -aq DEBIAN build/
rsync -aR -f"+ */" -f"- *" /usr/bin build/
cp job-runus build/usr/bin/job-runus
chmod +x build/usr/bin/job-runus
dpkg-deb --root-owner-group -b build .
