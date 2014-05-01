#!/bin/bash
# https://gist.github.com/lukewpatterson/4242707
# travis_ssh_key_encrypt_for_mac.ssh
# Encrypts private SSH keys for use in .travis.yml.
# Based on the excellent linux version:
# https://gist.github.com/lukewpatterson/4242707
# Also see the travis documentation:
# http://docs.travis-ci.com/user/build-configuration/#Secure-environment-variables
 
# Usage:
# Go to your git project:
#   cd my_project
# Then run:
#   ./travis_key_encrypt.sh ~/.ssh/my_private_key
 
SSH_KEY_PATH=$1
 
base64 --break 64 ${SSH_KEY_PATH} > ${SSH_KEY_PATH}_base64
 
if [[ ! $(which travis) ]]
then
  gem install travis
fi
 
travis login --org --auto
 
for l in $(cat ${SSH_KEY_PATH}_base64);
do
  LINE=$(grep -n $l ${SSH_KEY_PATH}_base64 | cut -d: -f1);
  echo "- secure: $(travis encrypt \"travisci_$LINE=$l\")";
done
