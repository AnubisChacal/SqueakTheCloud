#!/bin/bash

detect_aws() {
  response=$(curl -s --connect-timeout 2 http://169.254.169.254/latest/meta-data/instance-id)
  if [[ $response == *"i-"* ]]; then
    return 0
  else
    return 1
  fi
}

detect_gcp() {
  response=$(curl -s --connect-timeout 2 -H "Metadata-Flavor: Google" \
    "http://metadata.google.internal/computeMetadata/v1/project/project-id")
  if [[ -n "$response" ]]; then
    return 0
  else
    return 1
  fi
}

run() {
  echo -e "${CYAN}[~] Detectando ambiente Cloud...${RESET}"

  if detect_aws; then
    echo -e "${YELLOW}[✓] Ambiente AWS detectado.${RESET}"
    chmod +x AWS_shave.sh
    ./AWS_shave.sh
    exit 0
  fi

  if detect_gcp; then
    echo -e "${YELLOW}[✓] Ambiente GCP detectado.${RESET}"
    chmod +x gcp_shave.sh
    ./gcp_shave.sh
    exit 0
  fi

  echo -e "${RED}[X] Nenhum ambiente cloud detectado.${RESET}"
  exit 1
}

run 
