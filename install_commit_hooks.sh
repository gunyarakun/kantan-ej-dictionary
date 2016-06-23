#!/usr/bin/env sh

if [ -d '.git/hooks' ] && [ ! -f '.git/hooks/pre-commit' ] ; then
  ln -s ../../git-hooks/pre-commit .git/hooks
  echo 'git pre-commit hook is installed'
else
  echo 'git pre-commit hook is already installed'
fi
