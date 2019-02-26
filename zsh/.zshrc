##############################################################
##### zsh settings
##############################################################
#
#
##############################################################
# Basic
##############################################################
# use color
autoload -U colors
colors
# ignore C-d
setopt ignore_eof
# print jp file
setopt print_eight_bit
# emacs bind
bindkey -e
# startup tmux(default:attach latest session)
if [[ ! -n $TMUX ]]; then
  tmux a || tmux
fi


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
# complete slash
setopt auto_param_slash

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
alias lcolor='for i in {0..255}; do     printf "\x1b[38;5;${i}mcolour${i}\x1b[0m "; done'
alias genpass='cat /dev/urandom |LC_CTYPE=C tr -dc "[:graph:]" | tr -d "1Il0O~^" | fold -w 12 | head -n 10'
alias noproxy='source /usr/local/bin/noproxy.sh'
alias proxy='source /usr/local/bin/proxy.sh'

##############################################################
# alias
##############################################################
case ${OSTYPE} in
    darwin*)
        alias ls='ls -G -F'
        ;;
    linux*)
        alias ls='ls -F --color=auto'
        ;;
esac
alias ls='exa -F --color=auto'
alias ll='ls -l'
alias la='ls -al'
alias mkdir='mkdir -p'
alias zconf='$EDITOR ~/.zshrc'
alias rzconf='source ~/.zshrc'
alias aconf='$EDITOR $XDG_CONFIG_HOME/alacritty/alacritty.yml'
alias dc='docker-compose'
alias c='clear'
alias grep='hw'
alias hw='hw -anfi'

##############################################################
# git
# https://github.com/git/git
##############################################################
alias gs='git status --short --branch'
alias gp='git pull origin'
alias gl='git log --abbrev-commit --no-merges --date=iso'
alias gd='git diff'

##############################################################
# tmux
# https://github.com/tmux/tmux
##############################################################
alias tconf='$EDITOR ~/.tmux.conf'

##############################################################
# neovim
# https://github.com/neovim/neovim
##############################################################
alias vim='nvim'
alias vi='nvim'
alias nano='nvim'
alias neovim='nvim'
alias emacs='nvim'
alias nvimconf='nvim $XDG_CONFIG_HOME/nvim/options.rc.vim'

##############################################################
# anyenv
# https://github.com/anyenv/anyenv
##############################################################
eval "$(anyenv init -)"

##############################################################
# fzf
##############################################################
# enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 60% --reverse --border --ansi'
export FZF_CTRL_T_OPTS="--preview 'head -100 {}'"
fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
