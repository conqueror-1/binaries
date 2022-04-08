#!/usr/bin/env sh 
#script to make a directory and change into it.

function mkd ()
{
    mkdir  $1
}

function chdr ()
{
    cd $1
}

#input is relative path to file
#$1 is directory string
mkd $1
chdr $1
