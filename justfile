#!/usr/bin/env just --justfile
export PATH := join(justfile_directory(), "node_modules", "bin") + ":" + env_var('PATH')

build:
  npm run build

deploy:
    git checkout gh-pages
    git pull
    git rm -rf .
    cp -r dist/* .
    echo "latexlive.whl.moe" > CNAME
    git add css img js json lib publish index.html CNAME
    git commit -am "Deploy to GitHub Pages"
    git push --force
    git checkout main