#!/bin/bash

function my_squaring () {
    local NUM=$1
    local sq=$(( NUM*NUM ))
    echo "$sq"
}
