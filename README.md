
# Clothify 🛍️

Clothify is a simple SwiftUI shopping app that displays a grid of products and includes a functional cart with smooth animations. This project was built for practice and portfolio purposes, showcasing SwiftUI layout, transitions, view models, and reactive data handling.

---

## 🚀 Features

- 🛍️ Add and remove items from the cart
- 🔄 Real-time cart icon animation
- 🎯 Smooth row transitions when removing items
- 💰 Live cart total calculation using `reduce`
- 📭 Empty cart message
- 🧱 Responsive grid layout using `LazyVGrid`

---

## 🧠 Architecture

- **MVVM** (Model-View-ViewModel) architecture
- `CartViewModel` handles cart logic, animations, and state
- `@EnvironmentObject` for shared state across views
- `@Published` to trigger SwiftUI UI updates
- Modular views for easy readability and reuse

---

## 💡 SwiftUI Concepts Used

- `NavigationStack` and `NavigationLink` for view routing
- `@StateObject`, `@EnvironmentObject`, `@Published` for state management
- `LazyVGrid` for building a dynamic product grid
- `.transition()` and `.animation()` for view animation
- `withAnimation {}` to trigger animated cart updates
- `reduce` to compute the total price in a clean, declarative way

---

## 🛠️ Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Clothify.git
   ```
2. Open `Clothify.xcodeproj` in Xcode 15+
3. Run on the iOS Simulator or a physical device

---

## 📜 License

This project is for educational and portfolio purposes only.

---

## ✍️ Author

**Md Rabbi**  
GitHub: [@m-rabbi](https://github.com/m-rabbi)

---

