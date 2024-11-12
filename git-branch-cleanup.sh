#!/bin/bash
main_branch="main"

git fetch --prune
git branch --merged "$main_branch" | grep -v "\*" | grep -v "$main_branch" | xargs -n 1 git branch -d
echo "Removed merged branches."

#Remove local branches that have already been merged into the main branch.
