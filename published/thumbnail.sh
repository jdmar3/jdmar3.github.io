#!/bin/bash

PDFINPUT=$1
BASENAME=`basename $PDFINPUT .pdf`

gs -dNOPAUSE -sDEVICE=png16m -dDEVICEWIDTH=200 -dLastPage=1 -sOUTPUTFILE=/tmp/TEMP.png ./$PDFINPUT -c quit

convert /tmp/TEMP.png -resize 250 ./$BASENAME.png

rm /tmp/TEMP.png

