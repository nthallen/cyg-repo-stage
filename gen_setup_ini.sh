#!/bin/sh
cd /usr/src/repo-stage/
for ARCH in x86_64 ; do
  mksetupini --arch ${ARCH} --inifile=${ARCH}/setup.ini --releasearea=. --disable-check=missing-required-package,missing-depended-package
  bzip2 <${ARCH}/setup.ini >${ARCH}/setup.bz2
  xz -6e <${ARCH}/setup.ini >${ARCH}/setup.xz
done
