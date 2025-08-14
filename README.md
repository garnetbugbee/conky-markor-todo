# Conky–Markor–Todo

A comprehensive todo ecosystem using Conky, Markor, Syncthing, and Macrodroid.  
The main `todo_sys.conf` for Conky is adapted from the MX Linux Conky todo.

---

## 📦 Required Programs

- **[Conky](https://github.com/brndnmtthws/conky)**
- **[Conky Manager 2](https://github.com/zcot/conky-manager2)**
- **Markor (Android)**
  - [GitHub](https://github.com/gsantner/markor)  
  - [F-Droid](https://f-droid.org/packages/net.gsantner.markor/)
- **[Macrodroid](https://play.google.com/store/apps/details?id=com.arlosoft.macrodroid&hl=en-US)**
- **Syncthing**
  - [Desktop](https://syncthing.net) *(installation method varies by Linux distro)*  
  - [Syncthing Android Fork (F-Droid)](https://f-droid.org/packages/com.github.catfriend1.syncthingandroid/)

---

## 🖥 Conky Setup

1. Install Conky and Conky Manager 2.
2. Download and extract the ZIP of this repository.
3. Move the extracted files into a folder inside your hidden `.conky` directory in your home folder.  
   *(Enable "Show Hidden Files" in your file manager if you don’t see `.conky`.)*
4. Open **Conky Manager 2**, locate `todo.conf`, and enable it.
5. You should now see the Conky todo display on your desktop.

---

## 🤖 Install F-droid

1. Install and give permissions to install f-droid from either the file you downloaded to your phone
   from your computer, or from firefox, or chrome on your android phone.

## 🔄 Syncthing Setup

1. Install Syncthing on your desktop.
2. Add the folder containing `todo.txt` and the monthly todo file (`todo-month.txt`).
3. Install and run the **Syncthing Fork** app from F-Droid on your Android device.
4. Link your phone and computer in Syncthing.
5. Share the todo folder between devices.

---

## 📱 Markor Setup

1. Install **Markor** on Android.
2. Set the todo list file to the `todo.txt` shared via Syncthing.
3. Add the Markor todo widget to your phone’s home screen for quick access.

---

## ⚡ Macrodroid Setup

1. Import the `todo.macro` from this repository into Macrodroid.
2. Once activated, any SMS containing the 💪 emoji will append the text after it to your `todo.txt`.  

**Example:**
