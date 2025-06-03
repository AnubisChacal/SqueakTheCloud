# 🐁 Squeak the Cloud 🐁 - AWS EC2 & GCP Metadata Dump

Este script Bash foi desenvolvido para coletar credenciais temporárias de instâncias em ambientes **multi-cloud**, atualmente suportando:

- **AWS EC2**: Exploração do **IMDSv2 (Instance Metadata Service v2)** para obter credenciais temporárias da role IAM associada.
- **Google Cloud Platform (GCP)**: Extração do token de acesso e metadados de instâncias GCE via endpoint metadata da GCP.

<p align="center">
  <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExMHJmbnI4MHBybjFweDFmMnk4cmUyb3VxdHFpbDZ5aDhuOXdwNmUwYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/101t9QwTM6y5oc/giphy.gif" alt="Cloud Exploit GIF" width="600"/>
</p>

## ⚙️ Funcionalidade

O script realiza as seguintes ações:

### AWS EC2
1. Exibe um banner ASCII artístico em vermelho no terminal.
2. Requisita um token IMDSv2 válido via HTTP PUT.
3. Utiliza esse token para consultar a role IAM associada à instância.
4. Recupera e exibe as credenciais temporárias da role (AccessKeyId, SecretAccessKey, Token).

### Google Cloud Platform (GCP)
1. Consulta o endpoint de metadata da instância GCE.
2. Recupera o token de acesso OAuth2 temporário associado à instância.
3. Exibe informações relevantes do token e metadados.

## 📌 Uso

```bash
chmod +x SqueakTheCloud.sh
./SqueakTheCloud.sh
