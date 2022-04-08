#!/usr/bin/env sh

#change and ls

function cls() {
    cd $1 && ls
}

cls $1

