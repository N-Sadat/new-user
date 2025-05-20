# 🔐 Interactive Kali User Creation Script

This is a simple and user-friendly Bash script to create new users on Kali Linux non-interactively. It allows you to:

- Enter a username and password
- Confirm password for safety
- Decide whether the user should have `sudo` (admin) privileges

Perfect for quick user setup on Kali or other Debian-based systems.

---

## ⚙️ Features

✅ Prompt-based user creation  
✅ Hidden password input  
✅ Password confirmation  
✅ Optional sudo group addition  
✅ Clean terminal output with status messages

---

## 🚀 How to Use

### 1. 📥 Clone the Repository

```bash
git clone https://github.com/yourusername/kali-user-creator.git
cd kali-user-creator
```

### 2. 🧾 Make the Script Executable

```bash
chmod +x create_user_interactive.sh
```

### 3. ▶️ Run the Script

```bash
./create_user_interactive.sh
```

---

## 📋 Example Output

```
Enter new username: hacker
Enter password for hacker:
Confirm password:
Should the user have sudo privileges? (y/n): y
[+] Creating user: hacker
[+] Setting password...
[+] Adding hacker to sudo group...
[✓] User 'hacker' created successfully!
     └── Has sudo privileges.
```

---

## 🛠 Requirements

- Kali Linux (or any Debian-based distro)
- Bash shell
- `sudo` access (unless running as root)

---

## 📬 Author

**Nazmus Sadat**  
GitHub: [n-sadat](https://github.com/n-sadat)  
LinkedIn: [in/nsadat1925](https://www.linkedin.com/in/nsadat1925)  
Email: sadat404@proton.me

---

## 📜 License

This project is open-source and free to use under the [MIT License](LICENSE).

---

### 🤝 Contributions Welcome!

If you'd like to improve the script or translate it into other languages, feel free to fork and submit a pull request!
