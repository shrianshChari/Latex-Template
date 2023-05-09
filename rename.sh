#!/usr/bin/env bash

if [[ $# -lt 1 ]]; then
	echo "Error: Please provide what you want this to be renamed to!"
	exit 1
fi

echo "Renaming to" $1

for file in template.*
do
	# echo "Renaming $file to "$1"${file/template}"
	mv $file $1${file/template}
done

sed -i "s/template/$1/g" compile.sh
