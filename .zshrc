#ZSH configuration file
#author: lostnut

##General Options
#Replace command with cd when empty
setopt AUTO_CD
#Try to correct my errors
setopt CORRECT
#Correct patterns
setopt EXTENDED_GLOB
#Completion of globbing patterns
setopt GLOB_COMPLETE
#Allow comment
setopt INTERACTIVE_COMMENTS
#Allow multiple redirection
setopt MULTIOS
#Remove this annoying BEEP
setopt NO_BEEP
#Notify when background job finished
setopt NOTIFY


##History 
#History file
HISTFILE=~/.history
#NUmber of lines in history
HISTSIZE=1000
#Number of lines for a single shell instance
SAVEHIST=1000
#Share history between all zsh intances
setopt SHARE_HISTORY
#Extended version of history (date, elapse time, ...) /!\ other shells can't 
#read this format
setopt EXTENDED_HISTORY
#Ignore same lines
setopt HIST_IGNORE_ALL_DUPS
#Access history via editor commands does not retrieve same lines
setopt HIST_FIND_NO_DUPS
#Remove history command from history
setopt HIST_NO_STORE
#Remove function from history
setopt HIST_NO_FUNCTIONS
#Remove this annoying BEEP
setopt NO_HIST_BEEP

##Alias
#Complete alias pls
setopt COMPLETE_ALIASES
#aliases
alias ll="ls -als"

##Environnement variables
#editors
export EDITOR="vim"
export PAGER="less -iM"
export VISUAL="vim"

#Directory stack
#Auto register dir in pushd
setopt AUTO_PUSHD
#Dir stack size
DIRSTACKSIZE=10
#Ignore same directories
setopt PUSHD_IGNORE_DUPS

##Completion
#Initialization
autoload -U compinit
compinit
# Menu completion
zstyle ':completion:*' menu select
#Rehash
zstyle ':completion:*' rehash true
# Context : :completion:function:completer:command:argument:tag


##Prompt
#Colors
autoload -U colors
colors
autoload -U promptinit
promptinit
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$fg[green]%}%(!.#.$) %{$reset_color%}"
RPS1="[%D{%L:%M}]"

#Emacs keybinding 
bindkey -e
