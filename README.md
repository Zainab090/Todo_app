# Simple Todo App

A lightweight, cross-platform **Todo Application** built using **Flutter and Dart** in **Android Studio**. This app allows users to manage their daily tasks effortlessly with a clean, modern user interface.

---

## 🚀 Features

* **Task Management:** Create, toggle completion, and delete tasks instantly.
* **State Management:** Clean and reactive UI updates using standard Flutter state architecture.
* **Cross-Platform:** Single codebase running seamlessly on both Android and iOS devices.


---

## 🛠️ Tech Stack & Tools

* **Framework:** [Flutter](https://flutter.dev)
* **Language:** [Dart](https://dart.dev)
* **IDE:** [Android Studio](https://developer.android.com/studio)

---

## 💻 Getting Started

Follow these steps to set up and run the application locally on your machine.

### Prerequisites

Ensure you have the following installed on your development system:
* [Flutter SDK](https://docs.flutter.dev/get-started/install) (Stable channel)
* [Android Studio](https://developer.android.com/studio) with the **Flutter** and **Dart** plugins configured
* An Android Emulator, iOS Simulator, or a physical device connected in debugging mode

### Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/flutter-todo-app.git
   cd flutter-todo-app
   ```

2. **Fetch dependencies:**
   Open your terminal in the project root folder and run:
   ```bash
   flutter pub get
   ```

3. **Open in Android Studio:**
   * Launch Android Studio.
   * Select **Open an Existing Project** and navigate to your cloned `flutter-todo-app` folder.
   * Wait for the IDE to sync and index the project files.

4. **Run the Application:**
   * Select your target emulator or physical device from the device dropdown menu at the top.
   * Click the green **Run** button (Play icon) in the toolbar, or run this command in your terminal:
     ```bash
     flutter run
     ```

---

## 📁 Project Structure

The project follows a standard Flutter directory structure:

```text
flutter-todo-app/
├── android/          # Android-specific configurations and build files
├── ios/              # iOS-specific configurations and build files
├── lib/              # Main application source code
│   ├── models/       # Data structures (e.g., Todo item model)
│   ├── screens/      # UI screens (e.g., HomeScreen, AddTaskScreen)
│   ├── widgets/      # Reusable UI components (e.g., TodoTile)
│   └── main.dart     # App entry point
├── pubspec.yaml      # Assets, fonts, and package dependencies configuration
└── README.md         # Project documentation
```

---

## 🤝 Contributing

Contributions make the open-source community an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
