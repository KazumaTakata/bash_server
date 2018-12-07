#!/bin/bash

echo hello
echo shit

data=$(pwd)
echo $data

webdata=$(curl --silent https://github.com/gyuho/kubernetes | hxwls)

for d in $webdata
do
    if [ $( echo $d | grep  ^https ) ]
    then
        echo $d
    fi
done