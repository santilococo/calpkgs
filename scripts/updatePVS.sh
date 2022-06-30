#!/bin/bash

tmpFile="$(mktemp)"
wget -O "${tmpFile}" https://pvs-studio.com/en/pvs-studio/download-all 2> /dev/null
pkgver="$(grep -oP '(?<=https://cdn.pvs-studio.com/pvs-studio-).*(?=-x86_64.tgz)' "${tmpFile}")"
sed -i "s/^pkgver=.*/pkgver=${pkgver}/" ../pvs-studio/PKGBUILD