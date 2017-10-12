#proxy
export http_proxy=''
export https_proxy=$http_proxy
export all_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy


#for ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
eval "$(rbenv init -)"

# alias
alias ll='ls -alG'
alias cl='clear'
alias so='source ~/.bash_profile'
alias genpass='cat /dev/urandom |LC_CTYPE=C tr -dc "[:graph:]" | tr -d "1Il0O~^" | fold -w 12 | head -n 10'

#for vimer
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
# keybind vim prompt
bindkey -v

#auto-fu.zsh
source $HOME/.zsh/auto-fu.zsh/auto-fu.zsh
function zle-line-init(){
    auto-fu-init
}
zle -N zle-line-init
zstyle ':auto-fu:var' postdisplay $'' # 「-azfu-」を表示させないための記述

## ========================== ##
#zsh
export LANG=ja_JP.UTF-8
# 色を使用出来るようにする
autoload -Uz colors
colors

#prompt
PROMPT="%F{green}[%n %~]%f%(!.#.$) "

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# git function
source ~/.zsh/git.zshrc

# 表示

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# Ctrl+Dでzshを終了しない
setopt ignore_eof

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
# setopt extended_glob

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# OS 別の設定
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -F --color=auto'
        ;;
esac

# 3秒以上経過するコマンド実行の時間を表示する
REPORTTIME=3
## ========================== ##


export PATH=$PATH:/Users/morimoto/bin

source '/Users/morimoto/lib/azure-cli/az.completion'
