# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Setup dirs
mkdir ~/work
mkdir ~/work/git

# Create symlink from git repo to home for shak shock script
ln -s ~/work/git/dotfiles/mac/shak.sh ~/shak.sh
# Setup zshrc
ln -s -f ~/work/git/dotfiles/mac/.zshrc ~/.zshrc
