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

if [ $1 = "-i" ] && [ $2 = "evil" ]
then
    echo "\n🌐️ Downloading EvilCSS..."
    mkdir "evil-bin" && cd "evil-bin"
    wget "https://github.com/Redwars22/Evil/releases/download/v0.0.5/Evil.zip"
    echo "\n📦️ Unzipping EvilCSS..."
    unzip Evil.zip
    echo "\n⚙️  Setting EvilCSS up and opening its interpreter..."
    ruby evil.rb
    code example.evil
    exit 1
fi

if [ $1 = "-i" ] && [ $2 = "arctic" ]
then
    echo "\n🌐️ Downloading Arctic..."
    mkdir arctic-bin && cd arctic-bin
    wget "https://github.com/Redwars22/Arctic/releases/download/v0.4.0-alpha/arctic_v0.4.0_alpha.zip"
    echo "\n📦️ Unzipping Arctic..."
    unzip "arctic_v0.4.0_alpha.zip"
    echo "\nOpening Arctic Interpreter..."
    ruby arctic.rb
    code example.ice
    exit 1
fi

if [ $1 = "-i" ] && [ $2 = "csstotw" ] && [ $3 = "-alpha" ]; then
    echo "\n🌐️ Downloading CSSToTW..."
    git clone https://github.com/Redwars22/csstotw
    cd csstotw
    npm install prompt-sync
    npm install
    node csstotw.js
    exit 1
fi

if [ $1 = "-i" ] && [ $2 = "fictocpp" ] && [ $3 = "-release-preview" ]; then
    echo "\n🌐️ Downloading FictoC++ Release Preview 2..."
    mkdir fictocpp && cd fictocpp
    wget "https://github.com/Redwars22/fictocpp/releases/download/v0.10-release-candidate/fictolang_v0.10_release_preview.zip"
    unzip "fictolang_v0.10_release_preview.zip"
    echo "\nInstalling FictoC++ dependencies..."
    sudo apt-get install g++ && sudo apt-get install mingw-w64 && echo "\nDONE!!!"
    clear
    ./ficto exemplo.fpp
fi

if [ $1 = "-u" ]
then
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
    echo "Downloading a new version of Andrew..."
    rm andrew.sh
    wget "https://raw.githubusercontent.com/Redwars22/Andrew/main/andrew.sh"
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
