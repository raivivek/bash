#!/usr/bin/env bash

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "setup.sh" \
	--exclude "README.md" -avh --no-perms . ~;
echo "Applying changes to the shell. Restart otherwise."
source ~/.bash_profile;
