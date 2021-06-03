#!bash/bin


echo "+-------------------------------+"
echo "| LOCAL LINUX ENUMERATION       |"
echo "+-------------------------------+"
echo "1. MANUAL"
echo "2. AUTO"

read $1

# if option 1 then

echo "1. GETTING BASIC SYSTEM INFO"
echo "2. ENUMERATING USER AND ENVIRONMENTAL INFO"

read $2

echo "--------------------------------------"
echo "[+] GETTING BASIC SYSTEM INFORMATION |"
echo "--------------------------------------"

echo "[+] Kernel: output"
echo "[+] Hostname: output"
echo "[+] OS: output"

echo "---------------------------------"
echp "[+] GETTING NETWORK INFORMATION |"
echo "---------------------------------"

echo "[+] Interfaces: output"

# if option 2 then

echo "------------------------------------------------"
echo "ENUMERATING USER AND ENVIRONMENTAL INFORMATION |"
echo "------------------------------------------------"

echo "[+] All Users:"
echo "[+] Current User:"


