#! bash
rm -rfv README.md

echo "# Package Index" >> README.md

echo "\`\`\`" >> README.md
reprepro dumpreferences >> README.md
echo "\`\`\`" >> README.md

rm -rf .git
git init
git remote add gitcode git@gitcode.net:simple-linux-de/debserver.git
git remote add github git@github.com:Simple-Linux-DE/DebServer.git

git add .

git commit -m "Update packages"

git push --force --set-upstream gitcode master
git push --force --set-upstream github master
