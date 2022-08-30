#!/bin/sh

REPO_PATH="/var/www/git/${2}.git"

if [[ "$1" == "create" && ! -f "$REPO_PATH" ]]; then
  
  mkdir -p "$REPO_PATH"
  cd "$REPO_PATH"
  git init --bare
  git config uploadpack.allowTipSha1InWant true
  git config uploadpack.allowTipSha1InWant true
  git config uploadpack.allowTipSha1InWant true
  chown -Rf git:git "$REPO_PATH"
  chmod -R g+w "$REPO_PATH"
  echo "created"

fi

if [[ "$1" == "delete" && -d "$REPO_PATH" ]]; then
  
  rm -rf "$REPO_PATH"
  echo "deleted"

fi
