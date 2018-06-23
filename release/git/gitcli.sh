git clone https://github.com/studynine/samplejava.git
cd samplejava
cat README.md
echo "test 123" > test.txt
git add test.txt
git commit -m "comment"
git push
#BRANCHING
git branch newfeature
git checkout newfeature
git branch
echo "new feature" > feature.txt
git add feature.txt
git commit -m "featurecomment"
git push origin newfeature
#MERGING
git checkout master
git merge newfeature
git push
#HISTORY
#simplehistory
git log
#last two changes
git log -2
#last two changes detail diff
git log -p -2
#short diff history
git log --stat
#uncommitted changes since the last commit
git diff
echo "anotherline" >> feature.txt
git diff feature.txt
git log --prety=oneline
git diff commitid1 commitid2


