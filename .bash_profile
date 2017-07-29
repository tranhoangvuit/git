

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Set Arcanist
export PATH="$PATH:~/Arcanist/arcanist/bin"

# Set colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set Go variables
export GOPATH=~/Projects/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# Set locales, needed for some OSS projects
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Set aliases
alias atlasv="cd ~/Projects/atlasvagrant"
alias atlasp="cd ~/Projects/go/src/atlas"
alias eposr="cd ~/Projects/rail"
alias picl="cd ~/Projects/go/src/piclease-go"
