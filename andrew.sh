#!/bin/bash

clear
echo "\n"
echo "      ___           ___           ___           ___           ___           ___     "
echo "     /\  \         /\__\         /\  \         /\  \         /\  \         /\__\    "
echo "    /::\  \       /::|  |       /::\  \       /::\  \       /::\  \       /:/ _/_   "
echo "   /:/\:\  \     /:|:|  |      /:/\:\  \     /:/\:\  \     /:/\:\  \     /:/ /\__\  "
echo "  /::\~\:\  \   /:/|:|  |__   /:/  \:\__\   /::\~\:\  \   /::\~\:\  \   /:/ /:/ _/_ "
echo " /:/\:\ \:\__\ /:/ |:| /\__\ /:/__/ \:|__| /:/\:\ \:\__\ /:/\:\ \:\__\ /:/_/:/ /\__\\"
echo " \/__\:\/:/  / \/__|:|/:/  / \:\  \ /:/  / \/_|::\/:/  / \:\~\:\ \/__/ \:\/:/ /:/  /"
echo "      \::/  /      |:/:/  /   \:\  /:/  /     |:|::/  /   \:\ \:\__\    \::/_/:/  / "
echo "      /:/  /       |::/  /     \:\/:/  /      |:|\/__/     \:\ \/__/     \:\/:/  /  "
echo "     /:/  /        /:/  /       \::/__/       |:|  |        \:\__\        \::/  /   "
echo "     \/__/         \/__/         ~~            \|__|         \/__/         \/__/    "
echo "\n------------------------------------------------------------------------------------\n"

if [ $1 = "-i" ] && [ $2 = "schonheit" ]
then
    echo "\n🌐️ Downloading Schonheit..."
    wget "https://redwars22.github.io/Schonheit/schonheit.min.css"
    echo "✅️ Schonheit has been downloaded successfully!!!"
    nautilus .
    exit 1
fi

if [ $1 = "-i" ] && [ $2 = "titanium" ]
then
    mkdir titanium && cd titanium
    echo "\n🌐️ Downloading AndrewToolchain - Titanium's Interpreter..."
    wget "https://github.com/Redwars22/AndrewToolchain/releases/download/v1.4.0-release-candidate/titanium_v1.4.0_rc.zip"
    echo "\n📦️ Unzipping AndrewToolchain..."
    unzip "titanium_v1.4.0_rc.zip"
    echo "\n⚙️  Compilling Titanium..."
    tsc titanium.ts
    nautilus .
    exit 1
fi

if [ $1 = "-i" ] && [ $2 = "gustavoevil-game" ]
then
    echo "\n🌐️ Downloading Gustavo Evil: O Retorno do Norton..."
    wget "https://github.com/Redwars22/GustavoEvil/releases/download/v0.0.7-demo/GustavoEvil-1.0-pc.zip"
    unzip "GustavoEvil-1.0-pc.zip"
    cd "GustavoEvil-1.0-pc"
    echo "\n🎮️ Opening Gustavo Evil: O Retorno do Norton..."
    sh GustavoEvil.sh
    exit 1
fi

if [ $1 = "-h" ] && [ $2 = "pt" ]
then
    clear
    cat help-pt.txt
    echo "\n"
    exit 1
fi

if [ $1 = "-h" ]
then
    clear
    cat help.txt
    echo "\n"
    exit 1
fi

echo "\n🛑️ Invalid arguments! Please use -h to read AndrewSH's help file"