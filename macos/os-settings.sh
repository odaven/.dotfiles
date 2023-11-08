###################################################
# System preferences -> General
###################################################

# Accent colour
defaults write -g AppleAccentColor -string 1
# Highlight colour
defaults write -g AppleHighlightColor -string "1.000000 0.874510 0.701961 Orange"

###################################################
# Keyboard
###################################################

# Disable press and hold
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Fast keyrepeat and short delay until key repeat
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Remove beep on error
defaults write NSGlobalDomain com.apple.sound.beep.volume -float 0
