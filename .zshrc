# Prompt
#PROMPT="%F{blue}%n%F{cyan}@%F{white}%m %# $ "
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
alias ls='ls --color=auto'
alias icat='kitty +kitten icat'
alias ssh='kitty +kitten ssh'

# #------------------------------
# # Gnome-keyring
# #------------------------------
# if [ -n "$DESKTOP_SESSION" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi
