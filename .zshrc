# The following lines were added by compinstall

zstyle ':completion:*' completer _complete
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '/home/bjorn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -U promptinit
promptinit
prompt suse

unsetopt automenu

opts="--color=auto --human-readable --group-directories-first --si -v"
alias ls="ls $opts"
alias l="ls $opts --format=long"
alias ll="ls $opts --format=long --almost-all"

opts="--color=auto"
alias grep="grep $opts"
alias egrep="egrep $opts"
alias fgrep="fgrep $opts"

unset opts

bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
bindkey "\e[3~" delete-char # Del
bindkey "\eOc" forward-word # Ctrl+Right
bindkey "\eOd" backward-word # Ctrl+Left
bindkey "^R" history-incremental-search-backward # Ctrl+R
bindkey "\b" backward-kill-word
export EDITOR=vim
