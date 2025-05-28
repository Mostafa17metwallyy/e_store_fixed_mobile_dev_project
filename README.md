# 🛍️ E-Store App

A complete Flutter-based mobile e-commerce application that allows users to browse products, add items to a shopping cart, mark favorites, view product details, register/login using Firebase Authentication, and manage their profile including changing password and uploading a profile photo.

---

## 📲 Features

- ✅ Firebase Email/Password Authentication
- 🏠 Home screen with featured products and banner
- 🔍 Search and view all products
- ❤️ Add/remove products from favorites
- 🛒 Add to cart, view cart, and proceed to checkout
- ✅ Order confirmation and automatic cart clearing
- 👤 Profile management (view/edit info, change password, upload profile picture)
- 🔁 Persistent favorites and cart using Provider

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed
- VS Code
- Firebase account with configured project

---

## 🔧 Setup Instructions

1. **Clone the repository**

   ```bash
   git clone https://github.com/Mostafa17metwallyy/e_store_fixed_mobile_dev_project
   cd e_store_fixed

2. **Install dependencies**
    flutter pub get

3. **Run The App**
    flutter run

## Project Structure
lib/
├── models/
│   └── product_model.dart
├── providers/
│   ├── cart_provider.dart
│   └── favorites_provider.dart
├── screens/
│   ├── login_screen.dart
│   ├── register_screen.dart
│   ├── home_screen.dart
│   ├── product_details_screen.dart
│   ├── cart_screen.dart
│   ├── checkout_screen.dart
│   ├── favorites_screen.dart
│   └── profile_screen.dart
└── main.dart

## Generate an android APK
    flutter build apk --release
