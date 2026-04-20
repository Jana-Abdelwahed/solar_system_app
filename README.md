# Solar System 3D Explorer 🚀

An immersive, high-fidelity Flutter application that allows users to explore the celestial bodies of our solar system through interactive 3D models and detailed scientific data.

## ✨ Features

- **Interactive 3D Models:** Integrated `flutter_3d_controller` to render `.glb` planetary models with full touch support (rotate/zoom).
- **Cinematic UI/UX:** A dark-themed "Deep Space" aesthetic featuring custom gradients, high-resolution textures, and stadium-style interactive buttons.
- **Dynamic Content Engine:** Uses a centralized data model to populate planetary facts, about sections, and scientific metrics dynamically.
- **Advanced Navigation:** Implements `onGenerateRoute` for robust data passing and `PageController` for synchronized planet selection.
- **Scientific Precision:** Displays key metrics like Orbital Period, Gravity, Surface Area, and Mass in a clean, readable format.

## 🛠️ Technology Stack

- **Framework:** Flutter
- **Language:** Dart
- **3D Engine:** `flutter_3d_controller` (GLB rendering)
- **Web Technology:** `flutter_inappwebview` (for 3D support)
- **State Management:** StatefulWidget with local PageControllers

## 📁 Architecture

The project follows a clean modular structure to separate UI logic from data:

| Module | Responsibility |
| :--- | :--- |
| `main.dart` | Navigation engine and Route Generator. |
| `login.dart` | The "Hero" entry screen and splash animation. |
| `home.dart` | The PageView planetary selector. |
| `screen.dart` | The 3D viewing environment and data sheet. |

## 🎬 App Demo

Showcase your 3D interactions and smooth PageView navigation here:

<p align="center">
  <img src="assets/app_demoo.gif" alt="Solar System App Demo" width="300">
</p>

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/Jana-Abdelwahed/solar_system_3d.git](https://github.com/Jana-Abdelwahed/solar_system_3d.git)

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
