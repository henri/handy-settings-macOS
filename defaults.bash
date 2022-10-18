# set menu bar clock to analog
defauls write com.apple.menuextra.clock IsAnalog -bool true

# show expanded save dialog box by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# do not warn about file name extension (suffix) changes
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder

# ask to confirm changes before saving files (disable autosave)
defaults write ~/Library/Preferences/.GlobalPreferences.plist NSCloseAlwaysConfirmsChanges 1

# enable keyboard navigation of controls
defaults write .GlobalPreferences.plist AppleKeyboardUIMode 2
