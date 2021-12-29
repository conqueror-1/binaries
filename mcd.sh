#!/bin/bash
#script to make a directory and change into it.

function mcd ()
{
    mkdir -p $1
    cd $1
}

#input is relative path to file
#$1 is directory string
mcd $1

