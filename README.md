Here’s a complete and polished `README.md` file for your **Weather Application** that uses the **current location** to fetch and display weather data. The format and tone match your previous MapApplication README:

---

```markdown
# WeatherApp ☀️🌧️

A beginner-friendly SwiftUI-based iOS app that shows real-time weather information based on the user's current location. This project explores integrating **Core Location** with **SwiftUI**, fetching weather data via a public API, and presenting it through a clean and responsive interface.

---

## 🚀 Features

📍 Fetch Weather Based on Current Location  
🌡️ Display Temperature, Weather Conditions, and Location Name  
🌀 Real-Time Weather Refresh  
📱 Minimal and Clean SwiftUI Layout  
🧭 Location Permissions Handling  
🎨 Weather Icons & Descriptive UI  
🌙 Dark Mode Support  
🧩 Reusable Views and Components  
🧭 MVVM Architecture for Clean Code  
📉 Error Handling for No Internet or Location Access  

---

## 🧰 Tech Stack

🧑‍💻 Language: Swift  
🖼️ UI Framework: SwiftUI  
📍 Location: Core Location  
🌐 Networking: URLSession / Weather API (e.g., OpenWeatherMap)  
📦 Architecture: MVVM  
🛠️ State Management: Combine  
💻 IDE: Xcode  
🚀 Deployment Target: iOS 15+

---

## 📸 Screenshots

<p float="left">
  <img src="Screenshots/current-weather.png" alt="Current Weather Screen" width="45%" />
  <img src="Screenshots/location-permission.png" alt="Location Permission" width="45%" />
</p>

---

## 📁 Project Structure

```

WeatherApp/
├── WeatherApp.xcodeproj
├── WeatherApp/
│   ├── Assets.xcassets
│   ├── ContentView\.swift
│   ├── Models/
│   │   └── WeatherData.swift
│   ├── ViewModels/
│   │   └── WeatherViewModel.swift
│   ├── Views/
│   │   └── WeatherView\.swift
│   ├── Services/
│   │   ├── LocationManager.swift
│   │   └── WeatherService.swift
│   └── Utilities/
│       └── Extensions.swift
└── WeatherAppApp.swift

````

---

## 🛠️ Getting Started

### Prerequisites

- Xcode (latest stable version)
- iOS SDK (15+)
- Basic understanding of Swift & SwiftUI

### Installation

```bash
git clone https://github.com/SameerNadaf/WeatherApp.git
cd WeatherApp
open WeatherApp.xcodeproj
````

### Run the App

* Choose a simulator or connect your iPhone
* Press `Cmd + R` to build and run

---

## 📱 Usage

* On launch, allow location access to fetch weather data.
* The app shows the current temperature, location, and weather condition.
* Swipe down or relaunch to refresh weather data.

---

## 🎓 Learning Purpose

This app was built as a practice project to learn:

* Integrating Core Location in SwiftUI
* Using public APIs (like OpenWeatherMap) in iOS
* MVVM architecture for better scalability
* SwiftUI layouts and view separation
* Handling permissions and asynchronous data fetch

---

## 🤝 Contributing

This is an open learning project. Fork it, improve it, or use it as a base for your own weather app!

---

## 🪪 License

This project is licensed under the **MIT License**.

---

## 📬 Contact & Attribution

Developed by **Sameer Nadaf**
GitHub: [@SameerNadaf](https://github.com/SameerNadaf)
⭐️ Drop a star if this helped you or inspired your own project!

---

## 🙌 Acknowledgments

* [OpenWeatherMap API](https://openweathermap.org/api) for weather data
* Apple Core Location for GPS integration
* SwiftUI & Combine for modern declarative UI
* Tutorials and open-source guides that inspired this learning journey

```

---

Let me know if:
- You want this tailored to a specific API (like OpenWeatherMap).
- You have screenshots to link directly.
- You want to generate a downloadable `README.md` file.
```
