#!/bin/bash

echo 'Cloning repos'
git clone https://aur.archlinux.org/cower.git
git clone https://aur.archlinux.org/pacaur.git

echo "Adding falconindy's gpg key"
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53

echo "Making cower"
cd cower
makepkg -sif

echo "Making pacaur"
cd../pacaur
makepkg -sif

echo "Cleaning up"
cd ..
rm -rf cower
rm -rf pacaur
