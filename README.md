# ⚡️ Appaveli Native iOS

**A CLI tool for scaffolding native SwiftUI apps with clarity and control.**  
Minimal. Modular. Made for devs who don't play about their codebase.

---

## 🔥 What It Does

- 🧱 `appaveli-ios new <AppName>`  
  Scaffolds a clean SwiftUI app with a sensible structure (`App/`, `Features/`, `Shared/`)

- 🧩 `appaveli-ios generate feature <FeatureName>`  
  Instantly creates a new module with:
  - `FeatureView.swift`
  - `FeatureViewModel.swift`
  - `FeatureModel.swift`

---

## 📦 Installation

Clone and install globally:

```bash
git clone https://github.com/Appaveli/appaveli-native-ios.git
cd appaveli-native-ios
chmod +x install.sh
./install.sh
```

Now you can run the CLI anywhere:

```bash
appaveli-ios new MyApp
appaveli-ios generate feature Profile
```

---

## 🗂 Folder Philosophy

```plaintext
MyApp/
├── App/
│   └── ContentView.swift
├── Features/
│   └── Profile/
│       ├── ProfileView.swift
│       ├── ProfileViewModel.swift
│       └── ProfileModel.swift
├── Shared/
└── Resources/
```

- Keep `App/` for global views like `ContentView`
- Put screens and logic in `Features/<ModuleName>/`
- Use `Shared/` for utilities, constants, or design tokens

---

## 🧪 Run Unit Tests

```bash
swift test
```

Tests validate feature generation logic.

---

## 📂 Examples

See [`examples/MyApp`](./examples/MyApp) for an example of what’s generated.

---

## 🧠 Appaveli Mode Principles

- No frameworks unless they earn their keep
- Native-first. Ownership always.
- Code should **breathe clarity** and **scale with discipline**
- Build it like it matters — because it does

---





> *“When the code is clean, the mind stays sharper.”*
