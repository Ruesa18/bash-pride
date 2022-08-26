#!/bin/bash

if [ -f "$HOME/.config/pride-files/definitions.config" ]; then
	. $HOME/.config/pride-files/definitions.config
else
	. /usr/local/bin/pride-files/definitions.config
fi

if [ -f "$HOME/.config/pride-files/pride.config" ]; then
	. $HOME/.config/pride-files/pride.config
else
	. /usr/local/bin/pride-files/pride.config
fi

minSize=10

goalWidth="$(($width/$minSize))"
printWidth=${goalWidth%.*}

count=${#colors[@]}

colorIndex=0

for size in "${sizes[@]}"
do
    for y in $(seq 1 $size)
    do
        color=${colors[$colorIndex]}
        background=${backgroundcolors[$colorIndex]}
        line=''

        for x in $(seq 1 $printWidth)
        do
            for z in $(seq 1 $minSize)
            do
                line=$line$char
            done
        done
        printf ${background}${color}${line} 0;
        echo "${RESET}";
    done
    colorIndex="$(($colorIndex+1))"
done

