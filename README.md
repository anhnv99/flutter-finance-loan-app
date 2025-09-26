# 💰 Flutter Finance Loan Management App

[![Flutter](https://img.shields.io/badge/Flutter-3.3.0+-02569B.svg?style=flat&logo=flutter)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2.svg?style=flat&logo=dart)](https://dart.dev/)
[![BLoC](https://img.shields.io/badge/BLoC-Pattern-blue.svg?style=flat)](https://bloclibrary.dev/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

Ứng dụng quản lý thông tin khoản vay được xây dựng trên Flutter với kiến trúc BLoC pattern, Clean Architecture và modular structure.

## 🚀 Tính năng chính

- **💳 Tra cứu thông tin khoản vay**: Tìm kiếm bằng mã KV, SĐT, hoặc CCCD/CMND
- **📅 Lịch trả nợ**: Xem chi tiết lịch thanh toán từng kỳ hạn
- **💵 Tính tất toán**: Tự động tính số tiền cần thanh toán để tất toán khoản vay
- **📊 Báo cáo**: Xuất báo cáo PDF lịch thanh toán và thông tin khoản vay
- **🔄 Offline support**: Lưu trữ dữ liệu cục bộ cho truy cập nhanh
- **🌐 Multi-language**: Hỗ trợ tiếng Việt và tiếng Anh
- **🎨 Responsive UI**: Adaptive UI cho các kích thước màn hình khác nhau

## 🏗️ Kiến trúc

```
📦 flutter-finance-loan-app/
├── 📂 lib/                    # Main app code
│   ├── 📂 app/                # App configuration
│   ├── 📂 config/             # App-level configuration  
│   ├── 📂 di/                 # Dependency injection setup
│   ├── 📂 navigation/         # App routing & navigation
│   ├── 📂 ui/                 # Presentation layer (Pages & Widgets)
│   └── 📂 resource/           # Generated resources
├── 📂 modules/                # Modular packages
│   ├── 📂 base/               # Core utilities và base classes
│   ├── 📂 shared/             # Shared utilities và common widgets  
│   ├── 📂 domain/             # Business logic và entities
│   ├── 📂 data/               # Repository implementations và data sources
│   ├── 📂 resources/          # Assets, themes, và localization
│   └── 📂 finance/            # Finance specific features (TODO)
├── 📂 assets/                 # Static assets (images, fonts)
├── 📂 android/                # Android platform code
├── 📂 ios/                    # iOS platform code
└── 📂 test/                   # Unit và integration tests
```

## 🛠️ Getting Started

### Prerequisites

- **Flutter SDK**: `>=3.3.0`
- **Dart SDK**: `>=3.0.0`
- **Android Studio** / **VS Code**

### Installation

1. **Clone repository**
```bash
git clone https://github.com/anhnv99/flutter-finance-loan-app.git
cd flutter-finance-loan-app
```

2. **Install dependencies**
```bash
flutter pub get
find modules -name "pubspec.yaml" -execdir flutter pub get \;
```

3. **Generate code**
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

4. **Run the app**
```bash
flutter run
```

## 📞 Support

- **GitHub**: [flutter-finance-loan-app](https://github.com/anhnv99/flutter-finance-loan-app)
- **Issues**: [Report bugs](https://github.com/anhnv99/flutter-finance-loan-app/issues)

**Made with ❤️ using Flutter & BLoC**
A new Flutter project template.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
