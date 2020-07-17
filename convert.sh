#!/bin/bash

echo "DRAW.IO-EXPORT Started."
dirs=$(find /files -name '*.drawio')

for dir in $dirs
do
    echo "Converting ${dir} to ${dir}.pdf"
    rm -f "$dir.pdf"
    node /home/node/draw.io-export/bin/drawio.js "$dir" -o "$dir.pdf"
    echo "Converting ${dir} to ${dir}.png"
    rm -f "$dir.png"
    node /home/node/draw.io-export/bin/drawio.js "$dir" -o "$dir.png"
done
echo "DRAW.IO-EXPORT Finished."