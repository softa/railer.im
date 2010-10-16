#!/bin/bash
git pull
git add *
if test -z "$1"
then
    git commit -a -m "another commit without a significant comment. while in rumble do as rumblers."
else
    git commit -a -m "$1"
fi
git push
