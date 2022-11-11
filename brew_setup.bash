#!/usr/bin/env bash
#
# Brew is a package maanager for GNU/LINUX and macOS. This is a script which you may modify to meet your needs to quickly install a 
# bunch of packages onto your system so you are ready to go. Just modify to meet your needs.
#
#
# (C)2022 Henri Shustak
# Released under the MIT Licence : https://mit-license.org
#
#
# NOTE (1) : It is easiest to run this as as a user who can sudo on the system.
# NOTE (2) : You will want to copy and paste / uncomment and comment lines to make this work how you like.
#
# Before using this script you should install brew. Visit brew.sh and get the install command.
# If you are feeling lucky, you could uncomment the line below - your milage may vary.
#
# Uncomment the line below to install brew - you would be better off visiting www.brew.sh and making sure you get the real deal.
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# check the brewing setup is ready for production
brew doctor
if [ $0 != 0 ] ; then
  echo ""
  echo ""
  echo "You seem to have some issues with your brewing setup. Would you really like to continue [N/y] : "
  read BOTTLE_OUT
  if [ "${BOTTLE_OUT}" != "y" ] && [ "${BOTTLE_OUT}" != "yes" ] && [ "${BOTTLE_OUT}" != "Y" ] &&  [ "${BOTTLE_OUT}" != "YES" ] ; then
    # bottle out
    exit -1
  fi
fi

### install command line interface to mac app store
# brew install mas

### web browsers
# brew install --cask firefox
# brew install --cask chromium

### text editors 
# brew install --cask vscodium
# brew install --cask textmate
# brew install --cask atom

### media players
brew install --cask vlc
# brew install --cask mplayerx

### handy utiltiies
brew install git
brew install f3
brew install tmux
brew install coreutils
brew install htop
# brew install sox
# brew install dateutils
# brew install mosh
# brew install wireshark
# brew install youtube-dl
# brew install wget
# brew install telnet
# brew install nmap
# brew install iperf3

### handy terminal programs
# brew install --cask iterm2
# brew install --cask warp
# brew install --cask termius

### handy apps
# brew install --cask little-snitch
# brew install --cask carbon-copy-cloner
# brew install --cask launchbar
# brew install --cask gyroflow
# brew install --cask forklift
# brew install --cask path-finder

### scripting 
# brew install bash
# brew install fish
# brew install ruby
# brew install go
# brew install python@3.9
# brew install rust
# brew install gcc

### container / VM
# brew install --cask docker
# brew install --cask vmware-fusion
# brew install --cask virtualbox




