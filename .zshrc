# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/duy/.zshrc'

autoload -Uz compinit
compinit

#------------------------------
# Prompt
#------------------------------
PROMPT='%K{#242c42} %B%n@%m%b%k %F{cyan}%~%f %F{green}%#%f '

#------------------------------
# Window title
#------------------------------
case $TERM in
  termite|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
    precmd () {
      print -Pn "\e]0;%~\a"
    } 
    preexec () { print -Pn "\e]0;%~ \a" }
    ;;
  screen|screen-256color)
    precmd () { 
      print -Pn "\e]83;title \"$1\"\a" 
      print -Pn "\e]0;$TERM - (%L) %~\a" 
    }
    preexec () { 
      print -Pn "\e]83;title \"$1\"\a" 
      print -Pn "\e]0;$TERM - (%L) %~ \a" 
    }
    ;; 
esac
#------------------------------
# Aliases
#------------------------------
alias ls='ls --color=auto -X'
alias icat='kitty +kitten icat'
alias ssh='kitty +kitten ssh'
# End of lines added by compinstall

# bun
export BUN_INSTALL="/home/duy/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/home/duy/.bun/_bun" ] && source "/home/duy/.bun/_bun"
export PATH=$PATH:/home/duy/.spicetify
