##############################################################
##### zsh settings
##############################################################
#
#
##############################################################
# Basic
##############################################################
# encoding
export LANG=ja_JP.UTF-8
# use color
autoload -U colors
colors
# ignore C-d
setopt ignore_eof
# print jp file
setopt print_eight_bit

##############################################################
# history
##############################################################
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=10000
# ignore duplicate command
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_no_store

##############################################################
# prompt
##############################################################
PROMPT="%F{green}[%n %~]%f%(!.#.$)"

##############################################################
# prompt
##############################################################
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
           LANG=en_US.UTF-8 vcs_info
           RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg


##############################################################
# command line
##############################################################
# ignore after '#' 
setopt interactive_comments
setopt NO_beep

##############################################################
#completion 
##############################################################
#enable completion
autoload -U compinit
compinit -u 
# color
zstyle ':completion:*' list-colors "${LS_COLORS}"
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
# complete word-level 
setopt complete_in_word
# hilight 
zstyle ':completion:*:default' menu select=1
# use cache
zstyle ':completion::complete:*' use-cache true
# case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# narrow list
setopt list_packed
# invalid command check
setopt correct
# ignore current-directory after '../'
zstyle ':completion:*' ignore-parents parent pwd ..
# process name 
zstyle ':completion:*:processed' command 'ps x -o pid,s,args'

##############################################################
##### other settings
##############################################################
#
#

##############################################################
# extended cd
##############################################################
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

##############################################################
# custom command
##############################################################
# ls color
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
case ${OSTYPE} in
    darwin*)
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        alias ls='ls -F --color=auto'
        ;;
esac
alias lcolor='for i in {0..255}; do     printf "\x1b[38;5;${i}mcolour${i}\x1b[0m "; done'

##############################################################
# alias
##############################################################
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias mkdir='mkdir -p'
alias zconf='$EDITOR ~/.zshrc'
alias rconf='source ~/.zshrc'
# git
alias gs='git status --short --branch'
alias gp='git pull origin'
alias gl='git log --abbrev-commit --no-merges --date=iso'
alias gd='git diff'

##############################################################
# neovim
##############################################################
export XDG_CONFIG_HOME="$HOME/.config"
alias vim='nvim'
alias vi='nvim'
alias nano='nvim'
alias neovim='nvim'
alias emacs='nvim'
alias nvimconf='nvim $XDG_CONFIG_HOME/nvim/options.rc.vim'
