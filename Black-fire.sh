#!/bin/bash

#lu kalo mau edit script ini tag gua kontol
#tools orang di ambil itu dosa
#lu tolol

# kode warna
red='\033[0;31m'
hijau='\033[0;32m'
kuning='\033[0;33m'
biru='\033[0;34m'
ungu='\033[0;35m'
cyan='\033[0;36m'
putih='\033[0;37m'
brown='\e[0;33m'
mera='\033[41m'
hija='\033[42m'
kun='\033[43m'
RESET='\033[0m'

clear

echo -e "${hijau} ______  __               __      _______  __              "
echo -e "|   __ \|  |.---.-..----.|  |--. |    ___||__|.----..-----."
echo -e "|   __ <|  ||  _  ||  __||    <  |    ___||  ||   _||  -__|"
echo -e "|______/|__||___._||____||__|__| |___|    |__||__|  |_____| ${ungu}V : 1.0"
echo -e "${cyan}                             BY : Erorr37 Cyber Scurity                                                 "
echo "             -Track-"
echo -e "${hijau}    [ 1 ] look at your IP"
echo -e "${hijau}    [ 2 ] Ip Tracker"
echo -e "${hijau}    [ 3 ] Number Phone Tracker"
echo -e "${cyan}             -Spam"
echo -e "${hijau}    [ 4 ] Spam OTP wa"
echo -e "${hijau}    [ 5 ] Exit "
echo
read -p "    Black-Fire @ X #~ : " sui

if [ $sui = 1 ]
then
figlet your ip
# Mendapatkan alamat IP menggunakan ifconfig
ip_address=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

# Menampilkan alamat IP
echo "Alamat IP Anda adalah: $ip_address"
fi

if [ $sui = 2 ]
then
echo -e "${kuning}╲╲╭━━━━╮"
echo -e "╭╮┃▆┈┈▆┃╭╮"
echo -e "┃╰┫▽▽▽▽┣╯┃      -Ip Tracker-"
echo -e "╰━┫△△△▽┣━╯      -BY : Erorr37 Cyber Scurity"
echo -e "╲╲┃┈┈┈┈┃"
echo -e "╲╲┃┈┏┓┈┃"
echo -e "▔▔╰━╯╰━╯"
read -p " masukan ip target : " e
echo
# Mengambil alamat IP dari argumen baris perintah
ip_address=$e

# Melakukan permintaan HTTP untuk mendapatkan informasi lokasi
response=$(curl -s "https://ipinfo.io/${ip_address}")

# Mengambil informasi lokasi dari respons JSON
city=$(echo $response | jq -r '.city')
region=$(echo $response | jq -r '.region')
country=$(echo $response | jq -r '.country')
postal=$(echo $response | jq -r '.postal')
loc=$(echo $response | jq -r '.loc')

# Menampilkan informasi lokasi
echo -e "${cyan}_______________________________"
echo "Lokasi dari IP $ip_address:"
echo
echo "Kota: $city"
echo
echo "Wilayah: $region"
echo
echo "Negara: $country"
echo
echo "Kode Pos: $postal"
echo
echo "lokasi : $loc"
echo -e "${cyan}_______________________________"
fi

if [ $sui = 3 ]
then
echo -e "${kuning}╲╲╭━━━━╮"
echo -e "╭╮┃▆┈┈▆┃╭╮"
echo -e "┃╰┫▽▽▽▽┣╯┃      -Number Phone Tracker-"
echo -e "╰━┫△△△▽┣━╯      -BY : Erorr37 Cyber Scurity"
echo -e "╲╲┃┈┈┈┈┃"
echo -e "╲╲┃┈┏┓┈┃"
echo -e "▔▔╰━╯╰━╯"
echo "masukn nomor sesuai kode negara kamu"
read -p "masukan nomor target : " iw
echo
# Nomor telepon yang akan dilacak
phone_number="$iw"

# API key dari Numverify
api_key="YOUR_API_KEY"

# URL endpoint untuk melacak nomor telepon
url="http://apilayer.net/api/validate?access_key=$api_key&number=$phone_number"

# Melakukan permintaan HTTP GET ke API
response=$(curl -s $url)

# Parsing hasil JSON
valid=$(echo $response | jq -r '.valid')
country_code=$(echo $response | jq -r '.country_code')
country_name=$(echo $response | jq -r '.country_name')
location=$(echo $response | jq -r '.location')
carrier=$(echo $response | jq -r '.carrier')

# Menampilkan hasil
echo -e "${cyan}_______________________________"
echo "Nomor telepon: $phone_number"
echo
echo "Valid: $valid"
echo
echo "Kode Negara: $country_code"
echo
echo "Nama Negara: $country_name"
echo
echo "Lokasi: $location"
echo
echo "Operator: $carrier"
echo -e "${cyan}_______________________________"
fi

if [ $sui = 4 ]
then
pkg install git
pkg install python
git clone https://github.com/Erorr37/Spam-bokep
cd Spam-bokep
python uji.py
fi

if [ $sui = 5 ]
then
echo -e "${kuning} terima kasih telah menggunakan tools ini"
fi
