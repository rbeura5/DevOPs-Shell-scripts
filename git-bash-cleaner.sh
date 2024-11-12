#!/bin/bash
git fetch -p
for branch in $(git branch --merged | grep -v "\*"); do
  git branch -d "$branch"
done

