#!/bin/sh


mkdir -p ~/.vim/ftplugin/tex

if [ "`ls -1 ~/.vim/ftplugin/tex/ | wc -l`" != "0" ] ; then
	echo
	echo "! Warning"
	echo "!"
	echo "! You seem to have other LaTeX/TeX plugins installed on your system"
	echo "! TabLaTeX may not work properly, since it is a simple plugin that doesnt"
	echo "! interoperate well with other LaTeX Vim plugins"
	echo
fi

cp tablatex.vim ~/.vim/ftplugin/tex

echo "Plugin instaled. To uninstall just delete ~/.vim/ftplugin/tex/tablatex.vim"
