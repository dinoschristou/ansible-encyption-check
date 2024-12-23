#!/bin/bash

if ( git show :vars/vault.yaml | grep -q "\$ANSIBLE_VAULT;" ); then
echo "[38;5;108mVault Encrypted. Safe to commit.[0m"
else
echo "[38;5;208mVault not encrypted! Run 'make encrypt' and try again.[0m"
exit 1
fi