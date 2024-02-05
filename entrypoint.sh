#!/bin/bash

echo "============================"

git config --global user.name "${GITHUB_ACTOR}" #gives the isername of the person running the action rather than a generic one
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py #thats the same path used for copy in docker file

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main #since its an entirely new system set upstream is necessary

echo "============================"
