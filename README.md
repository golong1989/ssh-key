# ssh-secure

一键 SSH 安全加固脚本：自动配置公钥登录并禁用密码登录。

## 功能说明

本项目用于快速完成 Linux 服务器 SSH 安全加固，包括：

- 写入 SSH 公钥到 authorized_keys
- 自动创建 ~/.ssh 目录并设置权限
- 禁用 SSH 密码登录
- 启用公钥认证
- 加固 SSH 安全参数（防暴力破解）
- 自动校验 sshd 配置
- 自动重启 SSH 服务

## 使用方法

### 方式一：传入公钥字符串

```bash
./ssh_secure.sh "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAA... user@host"
