#!/bin/bash

# ===== Cores =====
VERDE='\033[1;32m'
VERMELHO='\033[1;31m'
AZUL='\033[1;34m'
AMARELO='\033[1;33m'
ROXO='\033[1;35m'
CYAN='\033[1;36m'
RESET='\033[0m'

clear
echo -e "${ROXO}============================"
echo -e "    🇫🇷 ${CYAN}FRANÇA TOOLS v1${ROXO}      "
echo -e "============================${RESET}"
echo
echo -e "${VERDE}[  1 ]${RESET} - ${AMARELO}NMAP${RESET}"
echo -e "${VERDE}[  2 ]${RESET} - ${AMARELO}NETCAT${RESET}"
echo -e "${VERDE}[  3 ]${RESET} - ${AMARELO}SHERLOCK${RESET}"
echo -e "${VERDE}[  4 ]${RESET} - ${AMARELO}TSHARK${RESET}"
echo -e "${VERDE}[  5 ]${RESET} - ${AMARELO}OH-MY-ZSH [Config Terminal]${RESET}"
echo -e "${VERDE}[  6 ]${RESET} - ${AMARELO}SPARTA${RESET}"
echo -e "${VERDE}[  7 ]${RESET} - ${AMARELO}SOCIALFISH${RESET}"
echo -e "${VERDE}[  8 ]${RESET} - ${AMARELO}SQLMAP${RESET}"
echo -e "${VERDE}[  9 ]${RESET} - ${AMARELO}NIKTO${RESET}"
echo -e "${VERDE}[ 10 ]${RESET} - ${AMARELO}NEOVIM${RESET}"
echo -e "${VERDE}[ 11 ]${RESET} - ${AMARELO}DIRB${RESET}"
echo -e "${VERDE}[ 12 ]${RESET} - ${AMARELO}ADMIN-FINDER${RESET}"
echo -e "${VERDE}[ 00 ]${RESET} - ${CYAN} THERAC NETWORK [CHAT/CANAL]${RESET}"
echo -e "${VERDE}[ 99 ]${RESET} - ${CYAN}MELHOR BOT DE CONSULTA${RESET}"
echo -e "${VERMELHO}[ 00 ]${RESET} - ${ROXO}SAIR${RESET}"

read -p "Escolha uma opção: " opt

case $opt in
 1)
    echo "Instalando e executando NMAP..."
    pkg install nmap -y
    nmap --help
    ;;
 2)
    echo "Instalando e executando NETCAT..."
    pkg install netcat -y
    nc -h
    ;;
 3)
    echo "Instalando Sherlock..."
    if [ ! -d "Sherlock" ]; then
      git clone https://github.com/sherlock-project/sherlock.git
    fi
    cd Sherlock || exit
    pip install -r requirements.txt
    echo "Para rodar: python3 sherlock.py username"
    ;;
 4)
    echo "Instalando TSHARK..."
    pkg install tshark -y
    tshark -h
    ;;
 5)
    echo "Instalando oh-my-zsh e configurando terminal..."
    pkg install zsh -y
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Agora você pode rodar: zsh"
    ;;
 6)
    echo "Instalando SPARTA (substituto do TH3INSPECTOR)..."
    if [ ! -d "sparta" ]; then
      git clone https://github.com/SECFORCE/sparta.git
    fi
    echo "Dependências podem precisar ser instaladas manualmente."
    echo "Para rodar: python3 sparta.py"
    ;;
 7)
    echo "Instalando SOCIALFISH..."
    if [ ! -d "SocialFish" ]; then
      git clone https://github.com/UndeadSec/SocialFish.git
    fi
    cd SocialFish || exit
    pip install -r requirements.txt
    echo "Para rodar: python3 SocialFish.py"
    ;;
 8)
    echo "Instalando SQLMAP..."
    if [ ! -d "sqlmap" ]; then
      git clone https://github.com/sqlmapproject/sqlmap.git
    fi
    cd sqlmap || exit
    echo "Para rodar: python3 sqlmap.py --help"
    ;;
 9)
    echo "Instalando NIKTO..."
    pkg install nikto -y
    nikto -H
    ;;
 10)
    echo "Instalando NEOVIM..."
    pkg install neovim -y
    nvim --version
    ;;
 11)
    echo "Instalando DIRB..."
    pkg install dirb -y
    dirb -h
    ;;
 12)
    echo "Instalando ADMIN-FINDER..."
    if [ ! -d "admin-finder" ]; then
      git clone https://github.com/the-c0d3r/admin-finder.git
    fi
    cd admin-finder || exit
    chmod +x admin-finder.py
    echo "Para rodar: python3 admin-finder.py -u URL"
    ;;
 00)
    echo "Canal Telegram "em desenvolvimento": https://t.me/+y0EajX0UjC8zNGZh"
    ;;
 99)
    echo "Melhor bot de consulta: https://t.me/blackconsultaasbot"
    ;;
 *)
    echo "Saindo..."
    exit 0
    ;;
esac

adiciona o script francatools v1.1
