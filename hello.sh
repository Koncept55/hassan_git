#! /bin/bash

declare -A map

map["prac2"]="Cardinal-Health1"

git init
git checkout -b DemoBranch
git add hello.txt
git commit -m "committed"

for i in "${!map[@]}"
do
	git remote add $i https://github.com/Koncept55/${map[$i]}.git
	git push -u $i DemoBranch
done
