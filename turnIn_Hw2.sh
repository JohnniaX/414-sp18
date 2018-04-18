#!/bin/bash

hw=hw2

#check no uncommitted changes.
(git status | grep -q modified:) &&  echo  'Error. There are uncommitted changes in your working directory. You can do "git status" to see them.
Please commit or stash uncommitted changes before submitting' && exit 1
COMMIT=$(git log | head -n 1 |  cut -b 1-14)
if (git tag $hw 2>/dev/null)
then
    echo "Created tag '$hw' pointing to $COMMIT"
else
    git tag -d $hw && git tag $hw
    echo "Re-creating tag '$hw'... (now $COMMIT)"
fi
echo "Now syncing with origin..."
git push origin --mirror #--atomic
echo "Please verify in gitlab that your tag '$hw' matches what you expect. "
