#!/usr/bin/env sh
#script to make a directory and change into it.

mcd ()
{
    mkdir -p $1
}

#input is relative path to file
#$1 is directory string
mcd $1
cd $1
