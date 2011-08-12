# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=zh_CN.UTF-8:zh_CN.GB18030

#alias directories
#format: hash -d dir_alias_name="path"
#cd ~dir_alias_name
hash -d ws="/Volumes/user/xijiangbo/workspace/"
hash -d trunk="/Volumes/user/xijiangbo/workspace/trunk/"
hash -d image="/Volumes/user/xijiangbo/workspace/trunk/image/"

# Customize to your needs...
alias ..="cd .."
alias la="ls -la"
alias ll="ls -l"
alias ~="cd ~"
alias wordspace="cd ~/workspace/"
alias trunk="cd ~/workspace/trunk/"
alias mcd="mvn clean deploy"
alias grep="grep --color=auto"

#mysql
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

#svn
alias uu="svn up";
alias cc="svn ci --message='test'"
alias st="svn st"

alias v="open -a MacVim"
alias oo="open ./"
$PATH=:"~/lib/maven/bin/":"/usr/local/lib/node":"/usr/local/bin/npm"

export PS1="[%T] %~ :"
export PS2="#"


##zsh set
#以附加方式写入历史记录
setopt INCAPPENDHISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
setopt HISTIGNOREDUPS
#为历史纪录中的命令添加时间戳      
setopt EXTENDED_HISTORY      
#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTOPUSHD
#相同的历史路径只保留一个
setopt PUSHDIGNORE_DUPS
alias top10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'
alias top='print -l ${(o)history%% *} | uniq -c | sort -nr'
#开启自动补全
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for : %d%b'

clear

