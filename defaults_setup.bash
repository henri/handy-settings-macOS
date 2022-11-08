#!/bin/bash

# Released under the MIT Licence
# Henri Shustak - macOS default settings
# (C)2022 All Rights Reserved

# check if we are running on a system earlier than macOS 11 (eg macOS 10.x)
if [ `uname -r | awk -F "." '{print $1}'` -le 19 ] ; then
	PRE-MACOS_11="true"
else
	PRE-MACOS_11="false"
fi

# set menu bar clock to analog
defauls write com.apple.menuextra.clock IsAnalog -bool true

# show expanded save dialog box by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# do not warn about file name extension (suffix) changes
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" # && killall Finder

# show path bar in finder (aka bread crumbs).
defaults write com.apple.finder "ShowPathbar" -bool "true" # && killall Finder

# show stats bar in finder (how many items free space etc).
defaults write com.apple.finder "ShowStatusBar" -bool "true" # && killall Finder

# set default finder view to list
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" # && killall Finder

# set finder to show title icon - on modern macOS systems it is hidden by defuault (it appears when you hover over the folder name)
# << this icon is useful - you can use this to drag the icon from finder to the save / open dialog box) >> 
if [ "${PRE-MACOS_11}" == "false" ] ; then
	defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true" # && killall Finder
fi

# ask to confirm changes before saving files (disable autosave)
# << further information : https://gist.github.com/henri/5c99c609f78be6d1660ce78865a19ed1 >>
defaults write ~/Library/Preferences/.GlobalPreferences.plist NSCloseAlwaysConfirmsChanges 1

# enable keyboard navigation of controls
defaults write .GlobalPreferences.plist AppleKeyboardUIMode 2

# set default saving location for new files to local storage rather than iCloud
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false" 

# safari show full url in smart search filed 
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool true # && killall Safari

# safari disable automatic opening of some file types which are downloaded
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# safari enable devleop drop down menu
defaults write com.apple.Safari IncludeDebugMenu 1

# set TextEdit to default to plain text files
defaults write com.apple.TextEdit "RichText" -bool false # && killall TextEdit

# disable application was downlaoded from the internet quarentine message
defaults write com.apple.LaunchServices "LSQuarantine" -bool false 

# set login window to show username and password rather than icon which you click - tested on macOS 13 and earlier
# defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME 1
