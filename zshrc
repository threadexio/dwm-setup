# zshrc by threadexio - modified by [your name here]
# https://github.com/threadexio/zsh-config

# Somewhat compatible with oh-my-zsh plugins
# just download them in the .zsh/plugins folder

#############################
########## Startup ##########
#############################

# Mostly used internally, can
# also be used in scripts
export _zshdir="$HOME/.zsh"

# Start tmux if _TMUX is set
if [[ ! "$TMUX" && "$_TMUX" ]]; then
	# Add any other arguments for tmux here
	tmux -2

	# Exit the shell when tmux exits
	exit
fi

# Auto complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Source aliasrc if it exists,
# keep all your aliases there
test -f "$_zshdir/aliasrc" && source "$_zshdir/aliasrc"

# Find all files in .zsh/plugins ending in .plugin.zsh and source them
# also add their full paths in a variable $plugins to use in scripts
#
# user@linux:~$ echo $plugins
# /home/user/.zsh/plugins/extract.plugin.zsh
# /home/user/.zsh/plugins/my_plugin/my_plugin.plugin.zsh
plugins=$(find "$_zshdir/plugins" -type f -name '*.plugin.zsh')
while read -r plugin; do
	source "$plugin"
done <<< "$plugins"

# Add any custom variable exports here
#
# Example:
# export PATH=$HOME/bin:$PATH
# export EDITOR=nano
# export MYVAR="my variable"

export EDITOR=nvim
export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH

#############################
########## Theming ##########
#############################

# If you have pywal installed then this will automagically apply your current theme
if tty|grep -q tty; then
	test -f "$HOME/.cache/wal/colors-tty.sh" && source "$HOME/.cache/wal/colors-tty.sh"
else
	test -f "$HOME/.cache/wal/sequences" && cat "$HOME/.cache/wal/sequences"
fi

# zsh colors
autoload -U colors && colors

#############################
########## History ##########
#############################

HISTSIZE=10000
HISTFILE="$_zshdir/zsh_history"

# Tip:	If you want each shell to have
#		it's own history simply
#		symlink HISTFILE to /dev/null
# user@linux:~$ rm "$HISTFILE"
# user@linux:~$ ln -s /dev/null "$HISTFILE"

#############################
########### Other ###########
#############################

# Disable Ctrl+S because it's useless
stty -ixon

# You can use set_win_title to set
# the window title from scripts,
# also used if you are using starship
#
# Example:
# set_win_title My New Window Title
function set_win_title(){
    echo -ne "\033]0;$@\007"
}

# Make the cd command irrelevant,
# with this you can cd to a path
# without typing cd
#
# Example:
# user@linux:~$ /usr/share
# user@linux:/usr/share$
# user@linux:/usr/share$ ~
# user@linux:~$
setopt auto_cd

#############################
######### Keybinds ##########
#############################
# NOTE: You shouldn't really use these unless,
#		your terminal doesn't have support for
#		these actions, or doesn't support keybinds

# You can find a detailed description
# of all actions available on the manpage:
# user@linux:~$ man zshzle
# or
# https://linux.die.net/man/1/zshzle
# And search for "STANDARD WIDGETS"
#
# How to find the correct keys:
#
# user@linux:~$ showkey -a
# Press any keys - Ctrl-D will terminate this program
#
#	^[[H		27 0033 0x1b	// HOME key
#				91 0133 0x5b
#				72 0110 0x48
#	^[[F		27 0033 0x1b	// END key
#				91 0133 0x5b
#				70 0106 0x46
#	^H			8 0010 0x08		// Ctrl+Backspace
#	^[[3;5~		27 0033 0x1b	// Ctrl+Delete
#				91 0133 0x5b
#				51 0063 0x33
#				59 0073 0x3b
#				53 0065 0x35
#				126 0176 0x7e
#
# NOTE: Your keys may be different
#		depending on the terminal
#		you are using

# Go to the start of the line
bindkey '^[[H' beginning-of-line

# Go to the end of the line
bindkey '^[[F' end-of-line

# Delete word before cursor, Ctrl+Backspace
bindkey '^H' backward-kill-word

# Delete work after cursor, Ctrl+Delete
bindkey '^[[3;5~' kill-word

# Previous word
bindkey '^[[1;5D' backward-word

# Next word
bindkey '^[[1;5C' forward-word

#############################
######### Scripts ###########
#############################

source $_zshdir/scripts/*

#############################
########## Prompt ###########
#############################

# If you are using starship uncomment these lines
precmd_functions+=(set_win_title)
eval "$(starship init zsh)"

# If you are using any other prompt add the init code here
