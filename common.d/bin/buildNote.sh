#!/usr/bin/env bash

######################################################################
# Name: buildNote.sh
# Brief: use Pandoc to build notes from markdown to pdf
# Author: <user_creator>
######################################################################

filename=$1
target="$(dirname "${filename}")/../pdf"
outputFile="$(basename "$filename" .md).pdf"

mkdir -p $target

#pandoc \
#    --pdf-engine=xelatex \
#    -o "$target/$outputFile" $filename &

 pandoc \
    --pdf-engine=xelatex \
    -V 'mainfont:DejaVuSerif' \
    -V "geometry:margin=1in" \
    -o "$target/$outputFile" $filename &

#
# pandoc \
#    --pdf-engine=xelatex \
#    -V 'mainfont:DejaVuSerif' \
#    -V 'mainfontoptions:Extension=.ttf, UprightFont=*, BoldFont=*-Bold, ItalicFont=*-Italic, BoldItalicFont=*-BoldItalic' \
#    -V 'sansfont:DejaVuSans.ttf' \
#    -V 'monofont:DejaVuSanMono.ttf' \
#    -V "geometry:margin=1in" \
#    -o "$target/$outputFile" $filename &
#
