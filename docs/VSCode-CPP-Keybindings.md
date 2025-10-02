# 🚀 C++ Sandbox - Keyboard Shortcuts Guide

This guide explains all the keyboard shortcuts and tasks available in your C++ Sandbox development environment for quick practice and algorithm testing.

## 📁 Project Structure

```
cpp-sandbox/
├── .vscode/                    # VSCode configuration (don't modify manually)
│   ├── c_cpp_properties.json  # IntelliSense settings
│   ├── keybindings.json       # Keyboard shortcuts
│   ├── launch.json            # Debug configurations
│   ├── settings.json          # Editor settings
│   └── tasks.json             # Build tasks
├── build/                     # Build output (auto-created)
│   ├── debug/                 # Debug builds (.exe, .pdb, .ilk, .obj)
│   └── release/               # Release builds (.exe, .obj)
├── docs/                      # Documentation
│   ├── README.md              # Documentation index
│   ├── Quick-Reference.md     # Essential shortcuts
│   └── VSCode-CPP-Keybindings.md  # This file
├── src/                       # Source files
│   └── *.cpp                  # Your C++ source code
└── README.md                  # Project overview
```

## ⌨️ Complete Keyboard Shortcuts Reference

### 🎯 **Main Development Actions**

| Shortcut | Action | Description |
|----------|--------|-------------|
| **`F5`** | 🐛 **Debug Only** | Compile with debug info + start VSCode debugger |
| **`Ctrl+F5`** | ▶️ **Run Only** | Compile optimized + run without debugging |
| **`Shift+F5`** | 🐛▶️ **Debug & Run** | Compile debug + run with debugging support |

### 🔨 **Build Only (No Running)**

| Shortcut | Action | Description |
|----------|--------|-------------|
| **`Ctrl+Shift+B`** | 🐛 **Debug Build** | Compile with debug symbols to `build/debug/` |
| **`Ctrl+Shift+R`** | ⚡ **Release Build** | Compile optimized to `build/release/` |
| **`Ctrl+Shift+Alt+F5`** | 🚀 **Modern C++20** | Compile with C++20 features to `build/release/` |

### 🏃 **Run Existing Executables**

| Shortcut | Action | Description |
|----------|--------|-------------|
| **`Ctrl+F6`** | 🏃 **Run Debug** | Run existing debug executable |
| **`Ctrl+Alt+F6`** | 🏃 **Run Release** | Run existing release executable |

### 🧹 **Clean Build Files**

| Shortcut | Action | Description |
|----------|--------|-------------|
| **`Ctrl+Shift+Delete`** | 🧹 **Clean Debug** | Delete all debug build files |
| **`Ctrl+Alt+Delete`** | 🧹 **Clean Release** | Delete all release build files |
| **`Ctrl+Shift+Alt+Delete`** | 🧹 **Clean All** | Delete entire build directory |

## 🎯 **Which Option Should I Use?**

### 🐛 **When to use Debug (`F5`)**
- **Setting breakpoints** and stepping through code
- **Inspecting variables** during execution
- **Finding bugs** and understanding program flow
- **Learning** how your code works step-by-step

**Output:** `build/debug/your-file.exe` (with .pdb debug symbols)

### ▶️ **When to use Run Only (`Ctrl+F5`)**
- **Testing functionality** without debugging overhead
- **Performance testing** (optimized code)
- **Final testing** before release
- **Quick execution** to see results

**Output:** `build/release/your-file.exe` (optimized)

### 🐛▶️ **When to use Debug & Run (`Shift+F5`)**
- **Debugging while running** (best of both worlds)
- **Catching runtime errors** with full debug info
- **Interactive debugging** during program execution

**Output:** `build/debug/your-file.exe` (runs with debugging enabled)

## 🔧 **Alternative Ways to Access Tasks**

### Method 1: Command Palette
1. Press **`Ctrl+Shift+P`**
2. Type **"Tasks: Run Task"**
3. Select from available tasks

### Method 2: Terminal Menu
- **Terminal** → **Run Task...** from the menu bar

### Method 3: Tasks Panel
- **View** → **Command Palette** → **Tasks: Show Running Tasks**

## 📋 **All Available Tasks**

### Build Tasks
- 🐛 **Debug Build** - Compile with debug info
- ⚡ **Release Build** - Compile optimized
- 🚀 **Modern C++20 Build** - Compile with C++20 standard

### Run Tasks
- 🏃 **Run Debug** - Execute debug version
- 🏃 **Run Release** - Execute release version

### Combined Tasks
- 🐛▶️ **Debug & Run** - Build debug + run
- ⚡▶️ **Release & Run** - Build release + run

### Clean Tasks
- 🧹 **Clean Debug** - Remove debug files
- 🧹 **Clean Release** - Remove release files
- 🧹 **Clean All** - Remove all build files
- 🧹 **Clean & Rebuild Debug** - Clean + build debug
- 🧹 **Clean & Rebuild Release** - Clean + build release

## 🛠️ **Troubleshooting**

### Problem: "Command not found" errors
**Solution:** Your global PowerShell functions aren't loaded. Restart VSCode or reload the window.

### Problem: Build files in wrong location
**Solution:** The system automatically creates `build/debug/` and `build/release/` folders.

### Problem: Can't find executable
**Solution:** Check the `build/debug/` or `build/release/` folder for your `.exe` file.

### Problem: Debugging not working
**Solution:** Use `F5` (Debug Only) or `Shift+F5` (Debug & Run), not `Ctrl+F5` (Run Only).

## 💡 **Pro Tips**

### 🎯 **Efficient Workflow**
1. **Development:** Use `F5` for debugging and fixing issues
2. **Testing:** Use `Ctrl+F5` for quick performance testing
3. **Clean builds:** Use `Ctrl+Shift+Delete` when things act strange

### 🧹 **When to Clean**
- **Strange build errors:** Try cleaning and rebuilding
- **Performance issues:** Clean release builds for fresh optimization
- **Disk space:** Clean all to remove build artifacts

### 🔄 **Quick Rebuild**
- **`Ctrl+Shift+Delete`** → **`Ctrl+Shift+B`** (Clean + rebuild debug)
- Or use **🧹 Clean & Rebuild Debug** task directly

### 📁 **File Organization**
- **Source files:** Keep in `src/` folder
- **Build output:** Automatically organized in `build/` folders
- **Documentation:** All in `docs/` folder
- **VSCode config:** All in `.vscode/` folder (portable to other projects)

## 🚀 **Getting Started**

1. **Open any `.cpp` file** from the `src/` folder in VSCode
2. **Press `F5`** to debug or **`Ctrl+F5`** to run
3. **Your executable** will be in `build/debug/` or `build/release/`
4. **Use clean tasks** when you need fresh builds

## 📖 **Additional Resources**

- **VSCode C++ Documentation:** [https://code.visualstudio.com/docs/languages/cpp](https://code.visualstudio.com/docs/languages/cpp)
- **MSVC Compiler Options:** [https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options](https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options)
- **C++20 Features:** [https://en.cppreference.com/w/cpp/20](https://en.cppreference.com/w/cpp/20)

---

**Happy Coding! 🎉**

*This C++ Sandbox uses your global PowerShell functions and organizes all output in the `build/` directory for a clean, efficient development experience perfect for quick practice and algorithm testing.*
