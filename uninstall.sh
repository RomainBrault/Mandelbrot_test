#!/bin/bash
echo -e "\e[00;31mUninstalling YASL\e[00m"
MANIFEST=`find ./ -name "install_manifest.txt"`
xargs rm -r < $MANIFEST
rm -r bin lib build