# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi


# 常用路径
export SOFTWAREDIR=/usr/local
export WORKSPACE=/var/www
export CONFIGSPACE=~/.config
###

# 输出颜色
export PS1='⏱ \[\e[31;1m\]\t \[\e[32;5;1m\]\u\[\e[0m\]\[\e[33;1m\]@\[\e[34;1m\]\h \[\e[35;1m\]\w\[\e[0m\]\$ '
export COLOR_NULL='\e[0m'
export COLOR_SUCC='\e[32;1m'
export COLOR_FAIL='\e[32;1m'
export COLOR_LOADING='\e[33;1m'

# include bashrc
echo -e "${COLOR_LOADING}add *.bashrc:${COLOR_NULL}"
for dirname in ${CONFIGSPACE}/*
do
    if [ -f ${dirname}/*.bashrc ]; then
        source ${dirname}/*.bashrc && echo -e "${COLOR_SUCC}succ source${COLOR_NULL} ${dirname}/*.bashrc" || echo -e "${COLOR_FAIL}fail source ${dirname}/*.bashrc${COLOR_NULL}"
    fi
done

# includCONFIGSPACE
if [ -f ${CONFIGSPACE}/sh/.alias ]; then 
    source ${CONFIGSPACE}/sh/.alias && echo -e "${COLOR_SUCC}Brook3's config update succ${COLOR_NULL}"
fi
