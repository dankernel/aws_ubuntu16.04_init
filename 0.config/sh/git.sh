#!/bin/bash

# Chech file size
max_file_size=10M
count=$(find . -size +${max_file_size} -type f -exec ls -lh {} \; | wc -l)
if [ $count -ne 0 ]; then
  echo -e '\E[34m'"\033[1m[FAIL] ${max_file_size} < file size : ${count}\033[0m"
  exit
else
  echo -e '\E[34m'"\033[1m[O  K] ${max_file_size} < file size : ${count}\033[0m"
fi

# Chech git directory
if [ ! -d .git/ ]
then
  echo -e '\E[34m'"\033[1m[FAIL] It's NOT git directory\033[0m"
  exit
fi

# Get commit message
echo -e '\E[34m'"\033[1mCommit message : \033[0m\c"
read commit_messge
echo $commit_messge

# Commit
git add .
git commit -m "$commit_messge"
git push

work="[O  K] ".$(pwd)
echo -e '\E[34m'"\033[1m$work\033[0m"
