# Configuring Our Prompt
# ======================

  # if you install git via homebrew, or install the bash autocompletion via homebrew, you get __git_ps1 which you can use in the PS1
  # to display the git branch.  it's supposedly a bit faster and cleaner than manually parsing through sed. i dont' know if you care
  # enough to change it

  # This function is called in your prompt to output your active git branch.
  function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  # # This function builds your prompt. It is called below
  function prompt {
     # Define the prompt character
     local   CHAR="♥"
  
     # Define some local colors
     local   RED="\[\e[0;31m\]"
     local   BLUE="\[\e[0;34m\]"
     local   GREEN="\[\e[0;32m\]"
     local   GRAY_TEXT_BLUE_BACKGROUND="\[\e[37;44;1m\]"
  
     # Define a variable to reset the text color
     local   RESET="\[\e[0m\]"
  
     # ♥ ☆ - Keeping some cool ASCII Characters for reference

     autoload -U colors && colors
    
     PS1="%{$fg[red]%}♥ %{$reset_color%}% %{$fg[cyan]%}>%{$reset_color%}%  "
     PS2='> '
     PS4='+ '

  }

  # A handy function to open your bash profile from any directory
  function bp {
    $EDITOR ~/.bash_profile
  }

# Environment Variables
# =====================

    # NODE_PATH
    export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

  # Configurations

    # GIT_MERGE_AUTO_EDIT
    # This variable configures git to not require a message when you merge.
    export GIT_MERGE_AUTOEDIT='no'

    # Editors
    export VISUAL="atom"
    export SVN_EDITOR="atom"
    export GIT_EDITOR="atom"
    export EDITOR="atom"

    # The USR_PATHS variable will just store all relevant /usr paths for easier usage
    # Each path is seperate via a : and we always use absolute paths.

    export USR_PATHS="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin"

    export PATH="$USR_PATHS:$PATH"

# Helpful Functions
# =====================

function desktop {
  cd /Users/$USER/Desktop/$@
}

# A function to easily grep for a matching process
# USE: psg postgres
function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}

# A function to extract correctly any archive based on extension
# USE: extract imazip.zip
#      extract imatar.tar
function extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Aliases
# =====================

  # General
  alias cls="clear"
  alias ~="cd ~"

  alias ..="cd .."
  alias ...="cd ../../"
  alias ..3="cd ../../../"
  alias ..4="cd ../../../../"
  alias ..5="cd ../../../../../"

  # ZHS
  alias zsh="nvim ~/.zprofile"

  # NPM
  alias npms="npm start"

  # VIM
  alias vim="vim -S ~/.vimrc"
  alias nvimrc="nvim ~/.config/nvim/init.vim"
  alias nv="nvim"

  # LS
  alias l='ls -lah'

  # Git
  alias gcl="git clone"
  alias gst="git status"
  alias gct="git checkout"
  alias gl="git pull"
  alias gp="git push"
  alias gd="git diff | subl"
  alias gc="git commit -v"
  alias gca="git commit -v -a"
  alias gb="git branch"
  alias gba="git branch -a"
  alias gcam="git commit -am"
  alias gbb="git branch -b"

  # Python
  alias p3="python3"

  alias lock="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

  # Custom Commands
  cd() { builtin cd "$@"; ls; }
  mcd () { mkdir -p "$1" && cd "$1"; }
  trash () { command mv "$@" ~/.Trash ; }

  # Case-Insensitive Auto Completion
  bind "set completion-ignore-case on"

  # Hue Lights
  alias hue-work="hue lights 2,3 on; hue lights 2 darkorchid; hue lights 3 blue"
  alias hue-movie="hue lights 2,3 on; hue lights 2,3 orange; hue light 2,3 -250"
  alias hue-wake="hue lights 2,3 on; hue lights 2,3 -100%; hue lights 2,3 +80%; hue lights 2,3 ffff00"

# Postgres
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH


# Final Configurations and Plugins
# =====================
  # Git Bash Completion
  # Will activate bash git completion if installed
  # via homebrew
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  export NVM_DIR="$HOME/.nvm"
  
  # RVM
  # This is an outdated method of loading RVM into the shell
  # But is kept here temporarily as a backup. This must be the last line of your bash_profile always
  # Run 'rvm get stable --auto-dotfiles' will remove this line and update ~/.zshrc
  [[ -s "/Users/$USER/.rvm/scripts/rvm" ]] && source "/Users/$USER/.rvm/scripts/rvm"  # This loads RVM into a shell session.

  prompt

##
# Your previous /Users/william/.zprofile file was backed up as /Users/william/.zprofile.macports-saved_2020-08-23_at_17:55:30
##

# MacPorts Installer addition on 2020-08-23_at_17:55:30: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
