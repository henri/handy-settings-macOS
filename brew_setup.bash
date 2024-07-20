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
# If you have a access to a fast mirror of the repo set the settings below - additional information : 
# https://docs.brew.sh/Installation#git-remote-mirroring
#
# export HOMEBREW_BREW_GIT_REMOTE="..."  # fast git mirror of Homebrew/brew 
# export HOMEBREW_CORE_GIT_REMOTE="..."  # fast git mirror of Homebrew/homebrew-core
#
# or - if you want to get API experimental style : 
# export HOMEBREW_INSTALL_FROM_API=1
#
# Uncomment the line below to install brew - you would be better off visiting www.brew.sh and making sure you get the real deal.
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
# # #  brew handy cheat sheet section  
#   #
#   #    show brew package dependicnes
# # #    $ brew deps --tree --installed <package>
#   #
#   #    show installed pcakages
# # #    $ brew list
#   #    
#   #    
# # #

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
# brew install --cask brave-browser

### text editors 
# brew install --cask vscodium
# brew install --cask textmate
# brew install --cask atom
# brew install --cask macdown
# brew install --cask sublime-text
# brew install --cask sublime-merge
# brew install micro
# brew install nvim
# brew install emacs



### media players
brew install --cask vlc
# brew install --cask mplayerx

### handy utiltiies
brew install qalc # calculator with unit conversion
brew install git
brew install f3 # check flash drives and other storage media
brew install tmux
brew install coreutils
brew install htop
brew install blueutil # bluetooth control via the command line
# brew install sox
# brew install dateutils
# brew install mosh
# brew install wireshark
# brew install youtube-dl
# brew install wget
# brew install telnet
# brew install nmap
# brew install iperf3
# brew install --cask rectangle

### handy terminal programs
# brew install --cask iterm2
# brew install --cask warp
# brew install --cask termius

### handy apps
# brew install --cask little-snitch
# brew install --cask carbon-copy-cloner
# brew install --cask launchbar
# brew install --cask raycast
# brew install --cask gyroflow
# brew install --cask forklift
# brew install --cask typinator
# brew install --cask path-finder
# brew install --cask shady
# brew install --cask soulver
# brew install --cask audio-hijack
# brew install --cask fission
# brew install --cask soundsource
# brew install --cask keka

### Serif Labs
# brew install --cask affinity-photo 
# brew install --cask affinity-designer 
# brew install --cask affinity-publisher

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

### vnc tools
# brew install --cask vnc-viewer # realvnc macOS app - works with x11vnc on LINUX



