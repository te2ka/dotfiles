#!/usr/bin/env bash

set -eu

if [ -n `find /System/Library/Fonts -maxdepth 1 -name 'CONSOLA*'` ]
then
  exit
fi

if [ -n `find /Library/Fonts -maxdepth 1 -name 'CONSOLA*'` ]
then
  exit
fi

if [ -n `find ${HOME}/Library/Fonts -maxdepth 1 -name 'CONSOLA*'` ]
then
  exit
fi

echo 'setup font'

readonly WORKING_DIR='/tmp/consolas'

mkdir -p "${WORKING_DIR}"

pushd "${WORKING_DIR}"

curl -LO https://sourceforge.net/projects/mscorefonts2/files/cabs/PowerPointViewer.exe
cabextract PowerPointViewer.exe
cabextract ppviewer.cab
open CONSOLA*.TTF

popd

rm -rf "${WORKING_DIR}"

