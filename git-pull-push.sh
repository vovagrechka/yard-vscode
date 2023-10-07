#!/bin/bash
set -ex

branch=main

git pull
git add .
if ! git diff-index --quiet HEAD; then
    git commit -m wat 
    # git push azure $branch 
    # git push gitlab $branch 
    git push github $branch 
fi

set +x
echo && echo [OK] && echo

