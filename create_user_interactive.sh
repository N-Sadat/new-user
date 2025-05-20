#!/bin/bash

# === ASK FOR USERNAME ===
read -p "Enter new username: " USERNAME

# === ASK FOR PASSWORD (HIDDEN) ===
read -s -p "Enter password for $USERNAME: " PASSWORD
echo
read -s -p "Confirm password: " PASSWORD_CONFIRM
echo

# === PASSWORD CONFIRMATION CHECK ===
if [ "$PASSWORD" != "$PASSWORD_CONFIRM" ]; then
    echo "[-] Passwords do not match. Aborting."
    exit 1
fi

# === ASK IF SUDO ACCESS IS NEEDED ===
read -p "Should the user have sudo privileges? (y/n): " ADD_SUDO

# === CREATE USER ===
echo "[+] Creating user: $USERNAME"
sudo useradd -m -s /bin/bash "$USERNAME"

# === SET PASSWORD ===
echo "[+] Setting password..."
echo "$USERNAME:$PASSWORD" | sudo chpasswd

# === ADD TO SUDO GROUP IF CHOSEN ===
if [[ "$ADD_SUDO" == "y" || "$ADD_SUDO" == "Y" ]]; then
    echo "[+] Adding $USERNAME to sudo group..."
    sudo usermod -aG sudo "$USERNAME"
fi

# === SUCCESS MESSAGE ===
echo "[✓] User '$USERNAME' created successfully!"
if [[ "$ADD_SUDO" == "y" || "$ADD_SUDO" == "Y" ]]; then
    echo "     └── Has sudo privileges."
else
    echo "     └── No sudo privileges."
fi
