# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# change directory /home/kavipriyanrk99/Drive/Kavipriyan1/
alias home='cd /home/kavipriyanrk99/Drive/Kavipriyan1/'

# change directory /home/kavipriyanrk99/Drive/Kavipriyan1/Desktop/
alias desktop='cd /home/kavipriyanrk99/Drive/Kavipriyan1/Desktop/'

# change directory /home/kavipriyanrk99/Drive/Kavipriyan1/Documents/
alias documents='cd /home/kavipriyanrk99/Drive/Kavipriyan1/Documents/'

# change directory /home/kavipriyanrk99/Drive/Kavipriyan1/Downloads/
alias downloads='cd /home/kavipriyanrk99/Drive/Kavipriyan1/Downloads/' 

# change directory /home/kavipriyanrk99/Drive/Kavipriyan1/Pictures/
alias pictures='cd /home/kavipriyanrk99/Drive/Kavipriyan1/Pictures/'

# compiling and running java
javarun(){
	javac -d .class "$1" && java -classpath .class:lib/*:. "${1%.java}";
}

# Set the default editor
export EDITOR=nvim
export VISUAL=nvim

export PS1="\[\e[0;36m\][\u@\h \W]\$ \[\e[0m\]"
