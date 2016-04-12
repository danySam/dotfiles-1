# List of all options http://zsh.sourceforge.net/Doc/Release/Options-Index.html
# List of all functions http://zsh.sourceforge.net/Doc/Release/Functions-Index.html

setopt long_list_jobs       # list jobs in the long format by default
setopt auto_resume          # Attempt to resume existing job before creating a new process.
setopt notify               # Report status of background jobs immediately.
unsetopt bg_nice            # Don't run all background jobs at a lower priority.
unsetopt hup                # Don't kill jobs on shell exit.
setopt nolistbeep           # don't beep on ambiguous completion \o/
setopt no_beep              # don't beep on error
setopt interactive_comments # Allow comments even in interactive shells
setopt multios              # Perform implicit tees or cats when multiple redirections are attempted, see http://zsh.sourceforge.net/Doc/Release/Options.html#index-MULTIOS
setopt extended_glob        # Treat the ‘#’, ‘~’ and ‘^’ characters as part of patterns for filename generation, etc. (An initial unquoted ‘~’ always produces named directory expansion.)

# Replace '?', '=' and '&' with \?, \=, \& when typing/pasting urls
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# add bin in path
export PATH=~/bin:$PATH

# Default editor
export VISUAL='vim'
export EDITOR='vim'

# bc (math lib) default config
export BC_ENV_ARGS=~/.bcrc

# If we have a local bin, add it
[[ -d "$HOME/bin" ]] && PATH="$PATH:$HOME/bin"

# Load directories colors in "ls" command
[[ -e ~/.dircolors ]] && eval `dircolors ~/.dircolors`

# Command not found helper
[[ -e /etc/zsh_command_not_found ]] && source /etc/zsh_command_not_found

# Add hash directory to desks
[[ -e "$HOME/.desk/desks/" ]] && hash -d desks="$HOME/.desk/desks/"
