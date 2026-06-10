#!/bin/bash

set -e

if [ $# -lt 1 ]; then
    echo "用法:"
    echo "  $0 \"ssh-ed25519 AAAA... comment\""
    exit 1
fi

PUBKEY="$1"

echo "==== 配置SSH公钥登录 ===="

mkdir -p ~/.ssh
chmod 700 ~/.ssh

touch ~/.ssh/authorized_keys

# 避免重复写入
grep -qxF "$PUBKEY" ~/.ssh/authorized_keys || echo "$PUBKEY" >> ~/.ssh/authorized_keys

chmod 600 ~/.ssh/authorized_keys
