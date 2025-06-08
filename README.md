# ⚡️ Appaveli Native iOS

**A CLI tool for scaffolding native SwiftUI apps with clarity and control.**  
Minimal. Modular. Built for devs who value structure and speed.

---

## 🔥 What It Does (Free Edition)

- 🧱 `appaveli-ios new <AppName>`  
  Scaffold a native SwiftUI app with folders like `App/`, `Features/`, and `Shared/`.

- 🧩 `appaveli-ios generate feature <FeatureName>`  
  Instantly create a `FeatureView.swift` file inside its own module directory.

> Simple. Native. Zero boilerplate.

---

## 📦 Installation

Clone and install globally:

```bash
git clone https://github.com/Appaveli/appaveli-native-ios.git
cd appaveli-native-ios
chmod +x install.sh
./install.sh

## 🗂 Folder Philosophy

```plaintext
MyApp/
├── App/
│   └── ContentView.swift
├── Features/
│   └── Profile/
│       └── ProfileView.swift
├── Shared/
└── Resources/

    •    Use App/ for entry points and root-level views
    •    Use Features/ for scoped modules
    •    Use Shared/ for design tokens, constants, and utilities

