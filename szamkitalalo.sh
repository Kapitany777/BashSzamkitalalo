#!/bin/bash

clear
echo Udvozollek a szamkitalalo jatekban!
echo -----------------------------------
./
let szam=$((RANDOM % 100))+1
#echo A kisorsolt szam: $szam

echo Gondoltam egy szamot 1 es 100 kozott, talald ki!

lepes=0
tipp=0

while [ $tipp -ne $szam ]; do

    echo -n Tipp:
    read tipp

    if [ $tipp -gt $szam ]; then
	echo Tul nagy szam!
    elif [ $tipp -lt $szam ]; then
	echo Tul kicsi szam!
    else
	echo Gratulalok, kitalaltad!
    fi

    let lepes+=1
done

echo A feladvanyt $lepes lepesben talaltad ki.
