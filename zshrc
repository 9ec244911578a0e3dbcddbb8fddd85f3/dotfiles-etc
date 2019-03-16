

# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/main_usr/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
setopt COMPLETE_ALIASES

# B
# This will set the default prompt to the theme
prompt walters

# "%? %n@%M %d %#"

#alias
alias  pn='ping 144.76.202.78'
alias  py='python'
alias -g l='|less'
alias -g g='|grep' 
alias -g t='|tee'
alias -g st='|sort'
alias  m='man'
alias  Syu='sudo pacman -Syu'
alias  S='sudo pacman -S'
alias   ..='cd ..'
alias  c='clear' #to be clear once responible usage
#alias  clear='echo "dont hide the info"'
alias  ll='ls -l'
alias  lla='ls -al'
alias  la='ls -a --color=auto'
alias  l='ls --color=auto'
alias  s2d='sudo pm-hibernate'
alias  nf='neofetch'
alias  v='vim'
alias  sv='sudo vim'
alias  lsb='lsblk'
#alias -g s!='sudo !!'
alias  s='sudo'
alias -g p='|'
alias -g pacman='sudo pacman'
alias -g mount='sudo mount'
alias -g umount='sudo umount'
alias -g gc='|grep -c'
alias  R='sudo pacman -Rs'
alias  vi='vim'
alias sus="sudo pm-suspend-hybrid "
alias pS="pikaur -S"
alias pSyu="pikaur -Syu"
alias sxd="setxkbmap de"
alias sx="setxkbmap de neo"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias tns="tmux new -s"
alias td="tmux detach"
alias tmux="Term=sreen-256color-bce tmux -2"
#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
 
# End of lines added by compinstall
