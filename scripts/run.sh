#!/bin/sh -eu

cd ~/.dots/scripts/globe
file="$(echo ./* | tr ' ' '\n' | dmenu)"

filePath="$PWD/$file"
test -x "$filePath" && { "$filePath"; exit; }
echo "File '$filePath' not exist or not executable."; exit 1