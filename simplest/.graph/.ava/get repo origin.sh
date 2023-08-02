echo "" > deps.md
for d in * ;do
	echo -e "\n# $d" >> deps.md
	cd $d
	git remote -v >> ../deps.md
	cd -
done
