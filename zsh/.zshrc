stty -ixon

## Environment display setup
autoload -Uz compinit
compinit

autoload -U colors
colors

autoload -U select-word-style
select-word-style bash

bindkey -e

setopt prompt_subst

# Environment diagnostic data
export LOCALE="en_US.UTF-8"
export LANG="en_US.UTF-8"

#Prompt Setup
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34:cd=34:su=0:sg=0:tw=0:ow=0:"
export EDITOR=vim
export LESS='XFR'
alias grep=grep --color=auto

PROMPT='%{$fg_bold[green]%}%m: %{$fg_bold[blue]%}%~%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%} %#
→ '

# ZSH Settings (LOCAL)
setopt INTERACTIVE_COMMENTS

# Alias definitions (CORE)
## Aliases tend to be long and complicated so they exist elsewhere!
safesource "$HOME/.zsh_aliases"

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
