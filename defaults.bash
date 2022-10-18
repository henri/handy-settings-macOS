# set menu bar clock to analog
defauls write com.apple.menuextra.clock IsAnalog -bool true

# show expanded save dialog box by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# do not warn about file name extension (suffix) changes
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" # && killall Finder

# ask to confirm changes before saving files (disable autosave)
defaults write ~/Library/Preferences/.GlobalPreferences.plist NSCloseAlwaysConfirmsChanges 1

# enable keyboard navigation of controls
defaults write .GlobalPreferences.plist AppleKeyboardUIMode 2

# safari show full url in smart search filed 
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true" # && killall Safari

# safari disable automatic opening of some file types which are downloaded
defaults write com.apple.Safari AutoOpenSafeDownloads -boolean NO

# safari enable devleop drop down menu
defaults write com.apple.Safari IncludeDebugMenu 1

# set TextEdit to default to plain text files
defaults write com.apple.TextEdit "RichText" -bool "false" && killall TextEdit

# disable application was downlaoded from the internet quarentine message
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false" 

