#!/bin/bash
git pull origin master
rm -f dump.rdb
git add *
if [[ -e /usr/bin/postgresql_autodoc ]]
then
    (cd doc && postgresql_autodoc -d railerim_development -t html)
    (cd doc && postgresql_autodoc -d railerim_development -t dot)
fi
if test -z "$1"
then
    git commit -a -m "another commit without a significant comment. while in rumble do as rumblers."
else
    git commit -a -m "$1"
fi
git push origin master
