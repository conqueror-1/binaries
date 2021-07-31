#!/usr/bin/env sh
#script to open ultisnippets for reference

open_snip_file()
{
	nvim $SNIPS_DIR$1.snippets
}

SNIPS_DIR=$HOME/.config/nvim/plugged/vim-snippets/UltiSnips/
open_snip_file $1
