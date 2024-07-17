#!/bin/bash

filenames=$(cat ids)
IFS=$'\n' read -rd '' -a a <<<"$filenames"

cd playlists/registry

for file in "${a[@]}" ;
do
	touch $file
done
