mkdir diff_test_repo
cd diff_test_repo
touch diff_test.txt
echo "this is a git diff test example" > diff_test.txt
git init .
Initialized empty Git repository in /Users/eothein/
git add diff_test.txt
git commit -am "add diff test file"

#What does git diff do now?

echo "this is a diff example" > diff_test.txt
git diff

#What do we get now?

# Special version of git diff
git diff --color-words

#Comparing different commits
git log --prety=oneline
957fbc92b123030c389bf8b4b874522bdf2db72c add feature
ce489262a1ee34340440e55a0b99ea6918e19e7a rename some classes
6b539f280d8b0ec4874671bae9c6bed80b788006 refactor some code for feature
646e7863348a427e1ed9163a9a96fa759112f102 add some copy to body

git diff 957fbc92b123030c389bf8b4b874522bdf2db72c ce489262a1ee34340440e55a0b99ea6918e19e7a
