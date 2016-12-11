# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Run dotfiles
source .macos
source .brew
source .brewcask

# Copy .custom_bash_profile to home
curl -fsSL https://raw.githubusercontent.com/tirolo/dotfiles/master/.custom_bash_profile > ~/.custom_bash_profile

# Add it to the .bash_profile
bashProfileFilePath=~/.bash_profile

# Check if file exists
if [ -f $bashProfileFilePath ]; then
    # Check for the content is already in the file
    if ! grep -q "source[[:space:]].custom_bash_profile" $bashProfileFilePath; then # Is there nay better way to match the whitespace?
        # If not, add it
        echo "" >> $bashProfileFilePath # Add new line first
        echo "source .custom_bash_profile" >> $bashProfileFilePath
    fi
else
    echo ".bash_profile not found"
fi