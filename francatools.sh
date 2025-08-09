#!/bin/bash

clear
echo "============================"
echo "    🇫🇷 FRANÇA TOOLS v1.      "
echo "============================"
echo
echo "[  1 ] - NMAP"
echo "[  2 ] - NETCAT"
echo "[  3 ] - SHERLOCK"
echo "[  4 ] - TSHARK"
echo "[  5 ] - OH-MY-ZSH [Config Terminal]"
echo "[  6 ] - SPARTA"
echo "[  7 ] - SOCIALFISH"
echo "[  8 ] - SQLMAP"
echo "[  9 ] - NIKTO"
echo "[ 10 ] - NEOVIM"
echo "[ 11 ] - DIRB"
echo "[ 12 ] - ADMIN-FINDER"
echo "[ 00 ] - HKBRS [CHAT/CANAL]"
echo "[ 99 ] - MELHOR BOT DE CONSULTA"
echo "[ 00 ] - SAIR"
echo

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
    echo "Canal HKBRS: https://t.me/hkbrs"
    ;;
 99)
    echo "Melhor bot de consulta: https://t.me/botdeconsulta"
    ;;
 *)
    echo "Saindo..."
    exit 0
    ;;
esac

adiciona o script francatools v1.1
