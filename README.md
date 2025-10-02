# C++ Sandbox

A C++ sandbox for quick practice, algorithm testing, and code experiments with organized build system and VSCode integration.

## 🛠️ Setup Instructions

### Prerequisites
- Python 3.6+ installed
- Administrator privileges (for installing MSVC)

### Initial Setup

**⚠️ Important: Run this setup BEFORE using the project for the first time!**

1. **Download and Install MSVC Compiler:**
   ```bash
   python setup-msvc.py
   ```
   This will:
   - Download the latest MSVC compiler and Windows SDK
   - Install it to `C:\Program Files (x86)\msvc\`
   - Set up all necessary include paths and libraries

2. **Copy VSCode Configuration:**
   - Copy the entire `.vscode/` folder to your new C++ projects
   - The configuration is pre-configured to work with the installed MSVC

3. **Verify Installation:**
   - Open VSCode in this directory
   - Open `src/demo.cpp`
   - Press `F5` - it should compile and run without errors

### For New Projects

To use this setup in new projects:
1. Copy the `.vscode/` folder to your new project
2. Create a `src/` folder for your C++ files
3. Start coding!

## 📖 Documentation

📚 **[Browse All Documentation](docs/)** - Complete guides and references

**Quick Access:**
- 🎯 **[Quick Reference](docs/Quick-Reference.md)** - Essential shortcuts
- 🚀 **[Complete Guide](docs/VSCode-CPP-Keybindings.md)** - Full documentation

## 🚀 Quick Start (After Setup)

1. Open any `.cpp` file from the `src/` folder
2. Press `F5` to debug or `Ctrl+F5` to run
3. Build output goes to `build/debug/` or `build/release/`

## 📁 Project Structure

```
├── .vscode/          # VSCode configuration (copy this to new projects!)
│   ├── c_cpp_properties.json  # IntelliSense configuration
│   ├── launch.json            # Debug configurations
│   ├── tasks.json             # Build tasks
│   ├── settings.json          # Editor settings
│   └── keybindings.json       # Custom keybindings
├── build/            # Build output (auto-created)
│   ├── debug/        # Debug builds
│   └── release/      # Release builds
├── docs/             # Documentation
├── src/              # Source files
│   └── *.cpp         # Your C++ files
├── setup-msvc.py     # MSVC installer script
└── README.md         # This file
```

## 🎯 Available Build Configurations

The `.vscode/launch.json` includes these configurations:

### Debug & Run Options (Integrated Terminal):
- **🐛 Debug Only** - Debug with breakpoints
- **▶️ Run Only (Release)** - Fast release build
- **🐛▶️ Debug & Run** - Debug build and run

### Debug & Run Options (External Console/Popup CMD):
- **🪟🐛 Debug (External Console)** - Debug in popup command window
- **🪟▶️ Run (External Console)** - Run in popup command window
- **🪟🐛▶️ Debug & Run (External Console)** - Debug and run in popup window

### Clean & Build Options (Integrated Terminal):
- **🧹🐛 Clean & Debug** - Clean + rebuild + debug
- **🧹⚡ Clean & Release** - Clean + rebuild + release

### Clean & Build Options (External Console/Popup CMD):
- **🪟🧹🐛 Clean & Debug (External Console)** - Clean + rebuild + debug in popup window
- **🪟🧹⚡ Clean & Release (External Console)** - Clean + rebuild + release in popup window

### Clean Only Options:
- **🧹 Clean Debug Only** - Remove debug files
- **🧹 Clean Release Only** - Remove release files
- **🧹 Clean All Only** - Remove all build files

> **💡 Tip:** Use the 🪟 (External Console) options when you want your program to run in a separate popup command window instead of VS Code's integrated terminal. This is useful for programs that need full console interaction or when you want to keep the output separate from VS Code.

## 🔧 Troubleshooting

### IntelliSense Issues
If you see "cannot open source file" errors:
1. Make sure you ran `python setup-msvc.py` first
2. Restart VSCode
3. Press `Ctrl+Shift+P` → `C/C++: Select IntelliSense Configuration...` → Choose `Windows-MSVC-x64`

### Build Issues
- Ensure MSVC is installed to `C:\Program Files (x86)\msvc\`
- Check that your `.cpp` files are in the `src/` folder
- Try the clean & rebuild options

### For New Projects
Simply copy the entire `.vscode/` folder to your new C++ project - it's pre-configured to work with the MSVC installation!

Happy coding! 🎉
