#! /bin/bash

forfiles /s /c "cmd /q /c if @fsize GTR 100000000 echo @relpath" > .gitignore

git add .
git commit -m  "backup"
git push -u origin master