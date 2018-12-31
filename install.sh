#!/bin/bash
export IDEIMAGESNAME=brook3.ide
export IDENAME=Brook3.ide
export IDECONFDIR=.Brook3.ide.conf

# init env
function env_init(){
	# Brook3.ide.conf
	if [ ! -d ~/${IDECONFDIR} ]; then
		git clone https://gitlab.com/381654729/env/.Brook3.ide.conf.git ~/${IDECONFDIR}
	fi
	# .bashrc
	if [ -f ~/.bashrc ]; then
		rm -rf ~/.bashrc
	fi
	ln -s ~/${IDECONFDIR}/shell/.bashrc ~/.bashrc

	# .vim
	if [ -d ~/.vim ]; then
		rm -rf ~/.vim
	fi
	ln -s ~/${IDECONFDIR}/vim ~/.vim
	if [ -f ~/.vimrc ]; then
		rm -rf ~/.vimrc
	fi
	ln -s ~/${IDECONFDIR}/vim/.vimrc ~/.vimrc
}
env_init
