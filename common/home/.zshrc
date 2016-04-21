# setup antigen for zsh "package management"
source .config/zsh/antigen.zsh
antigen use oh-my-zsh

# theme
antigen theme robbyrussell

# packages
antigen bundle git
antigen bundle pip
antigen bundle python

# import local zsh customizations, if present
zrcl="$HOME/.zshrc.local"
[[ ! -a $zrcl ]] || source $zrcl

# some cd shortcuts
alias cd.='cd .'
alias ..='cd ..'
alias cD='cd ~/src/justin/dotfiles'
alias cS='cd ~/src/'

# Allow VIM-like shortcuts at the command line
bindkey -v
bindkey jj vi-cmd-mode

# source all files in .profile.d
for i in ~/.profile.d/*.sh ; do
    if [ -r "$i" ]; then
        . $i
    fi
done

# vim as default editor
export EDITOR='vim'

# Ruby gems
if which ruby > /dev/null && which gem > /dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
