# 🐁Squeak the cloud🐁 - EC2 IAM Metadata Dump

Este script Bash foi desenvolvido para coletar credenciais temporárias de uma instância EC2 na AWS explorando o **IMDSv2 (Instance Metadata Service v2)**. Quando se tem acesso à instância e deseja-se extrair as **credenciais da role IAM** associada.

<p align="center">
  <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExMHJmbnI4MHBybjFweDFmMnk4cmUyb3VxdHFpbDZ5aDhuOXdwNmUwYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/101t9QwTM6y5oc/giphy.gif" alt="EC2 Exploit GIF" width="600"/>
</p>

## ⚙️ Funcionalidade

O script realiza as seguintes ações:

1. Exibe um banner ASCII artístico em vermelho no terminal.
2. Requisita um token IMDSv2 válido via HTTP PUT.
3. Utiliza esse token para consultar a role IAM associada à instância.
4. Recupera e exibe as credenciais temporárias da role (AccessKeyId, SecretAccessKey, Token).

## 📌 Uso

```bash
chmod +x SqueakTheClou.sh
./SqueakTheClou.sh
