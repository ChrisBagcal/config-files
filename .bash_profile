#.bash_profile

# Get the aliases and the functions
if [ -f ~/.bashrc ]
then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:/user/local/bin:$HOME/bin:$HOME/Scripts
AUDIODRIVER=snd_hda_intel

export PATH
# .bash_profile (end)
