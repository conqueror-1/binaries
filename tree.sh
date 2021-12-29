#!/usr/bin/env sh

#This script tries to print the tree structure of the current directory

level=0
space=1

function chdr()
{
	cd $1
}

function draw_level()
{
	for ((i=0; i < $level ; i++))	
	do
		printf "#"
	done
}

function draw_space()
{
	for ((i=0; i < $space ; i++))	
	do
		printf " *********** "
	done
}

function draw_link()
{
	for ((i=0; i < $space ; i++))	
	do
		printf "  ----------- "
	done
	echo ""
	printf "|"

}

function draw_tree()
{
	for file in $@
	do
		if [[ -d $file ]] ; then
			if [[ ( $file != $1 )  && ( $file != $2 ) ]]; then
				
				((level++))

				echo " "
				draw_link
				draw_level
				printf "DIR $file "	

				((space++))

				list=$(ls -a $file)	

				chdr $file
				draw_tree $list
				chdr $2

				((level--))
				((space--))

			fi
		elif [[ -f $file ]]; then
			echo " "
			draw_link
			draw_level
			draw_space
			printf "FILE $file "	
		fi	
	done
}

if [[ $# == 0 ]]; then
	
	DIR=$(pwd)
	files=$(ls -a $DIR)

elif [[ $# == 1 ]]; then
	
	if [[ -d $1 ]]; then

		chdr $1
		DIR=$(pwd)
		files=$(ls -a $DIR)
	fi
fi
draw_tree $files

