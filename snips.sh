#!/bin/sh

#script to open ultisnippets for reference

function open_snip_file()
{
	nvim $SNIPS_DIR$1.snippets
}

SNIPS_DIR=/Users/user/.config/nvim/plugged/vim-snippets/UltiSnips/
open_snip_file $1
