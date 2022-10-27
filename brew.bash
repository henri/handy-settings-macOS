#!/usr/bin/env bash
#
# Brew is a package maanager for GNU/LINUX and macOS. This is a script which you may modify to meet your needs to quickly install a 
# bunch of packages onto your system so you are ready to go. Just modify to meet your needs.
#
# Before using this script you should install brew. Visit brew.sh and get the install command.
# If you are feeling lucky, you could uncomment the line below - your milage may vary.
#
# (C)2022 Henri Shustak
# Released under the MIT Licence : https://mit-license.org
#

# NOTE (1) : It is easiest to run this as as a user who can sudo on the system.
# NOTE (2) : 

# Uncomment the line below to install brew - you would be better off visiting www.brew.sh and making sure you get the real deal.
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# check the brewing setup is ready for production
brew doctor
if [ $0 != 0 ] ; then
  echo "You seem to have some issues with your brewing setup. Would you really like to continue [N/y] : "
  read BOTTLE_OUT
  if [ "${BOTTLE_OUT}" != "y" ] || [ "${BOTTLE_OUT}" != "yes" ] || [ "${BOTTLE_OUT}" != "Y" ] ||  [ "${BOTTLE_OUT}" != "YES" ] ; then
    # bottle out
    exit -1
  fi
fi

# install command line interface to mac application store
# brew install mas

# install some web browsers
brew install --cask firefox
brew install --cask chromium

# install some text editors 
brew install --cask vscodium
brew install --cask textmate

# media players
brew install --cask vlc
brew install --cask mplayerx


