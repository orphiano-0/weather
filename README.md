# 🌦️ Weather App — Consuming Web Services

This Flutter application demonstrates how to consume **RESTful** and **XML-based web services** using a **feature-first clean architecture** approach. It fetches real-time weather data from the OpenWeatherMap API and displays it with a responsive UI.

---

## 📦 Project Structure

The project follows a **feature-first clean architecture**:

```

lib/
├── config/ # App-wide configurations (e.g., routes)
├── core/ # Shared utilities and exceptions
├── features/
│ └── weather/
│ ├── data/
│ │ ├── datasource/
│ │ ├── models/
│ │ └── repositories_impl/
│ ├── domain/
│ │ ├── entity/
│ │ ├── repositories/
│ │ └── usecases/
│ └── presentation/
│ ├── bloc/
│ ├── screens/
│ └── widgets/
├── app.dart # App entry wrapper with router/provider
└── main.dart # Entry point

```

---

## 🚀 Getting Started

### 🧰 System Requirements

- Flutter: **3.32.4**
- Dart: Automatically installed with Flutter

### 💾 Installing Flutter & Dart

1. Follow the [official Flutter installation guide](https://docs.flutter.dev/get-started/install) for your OS.
2. After installation, verify:
   ```bash
   flutter doctor
   ```

---

### 📥 Clone the Repository

```bash
git clone https://github.com/orphiano-0/weather.git
cd weather
```

### 📦 Install Dependencies

```bash
flutter pub get
```

### ▶️ Run the App

```bash
flutter run
```

> 💡 Make sure you’ve set up an emulator or connected a physical device.

---

## 📚 Packages Used & Their Purpose

| Package                                                           | Version  | Description                                                        |
| ----------------------------------------------------------------- | -------- | ------------------------------------------------------------------ |
| [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)           | ^9.1.1   | Handles UI state management using BLoC pattern.                    |
| [`get_it`](https://pub.dev/packages/get_it)                       | ^8.0.3   | Service locator for dependency injection.                          |
| [`json_annotation`](https://pub.dev/packages/json_annotation)     | ^4.9.0   | Annotations for generating JSON serialization boilerplate.         |
| [`json_serializable`](https://pub.dev/packages/json_serializable) | ^6.9.5   | Code generator for model serialization (`build_runner`).           |
| [`build_runner`](https://pub.dev/packages/build_runner)           | ^2.5.2   | Generates code using annotations (e.g., model serialization).      |
| [`flutter_dotenv`](https://pub.dev/packages/flutter_dotenv)       | ^5.2.1   | Loads `.env` file to manage environment variables (like API keys). |
| [`dio`](https://pub.dev/packages/dio)                             | ^5.8.0+1 | A powerful HTTP client for making API requests.                    |
| [`xml`](https://pub.dev/packages/xml)                             | ^6.5.0   | Parses and handles XML responses from APIs.                        |
| [`flutter_svg`](https://pub.dev/packages/flutter_svg)             | ^2.1.0   | Renders SVG images for weather icons.                              |
| [`go_router`](https://pub.dev/packages/go_router)                 | ^15.2.3  | Simplifies and structures navigation/routing.                      |

---

## 🌐 API Used

This project uses the [OpenWeatherMap API](https://openweathermap.org/api), supporting both:

- **JSON**: `mode=json` (default)
- **XML**: `mode=xml`

Ensure you create a `.env` file in the root directory with your API key:

```
OPENWEATHER_API_KEY=your_api_key_here
```

---

## 🧪 Example Features

- 🔍 Search by city name
- 🌤 Display current weather (temperature, humidity, clouds, etc.)
- 🧩 Dynamic icon rendering based on weather
- 💾 Supports both JSON and XML response formats

---

## 🛠️ Author

**Gabriel J. Orphiano**
Technological Institute of the Philippines
[LinkedIn](https://www.linkedin.com) | [GitHub](https://github.com/orphiano-0)

```

```
