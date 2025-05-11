# Responsive Dashboard - Flutter

🌐 [Live Demo](https://responsive-dashboard-green.vercel.app/)

A modern, responsive Flutter dashboard application that adapts seamlessly to different screen sizes. This project demonstrates best practices in implementing responsive design patterns in Flutter.

## Features

- 📱 Fully responsive layout that adapts to desktop, tablet, and mobile screens
- 🎨 Modern and clean user interface
- 📊 Dashboard sections with various data visualizations
- 🔄 Adaptive layouts based on screen size
- 📈 Income charts and transaction history
- 👤 User information management
- 🌐 API integration ready

## Project Structure

```
lib/
├── api/
│   └── api.dart            # API service implementation
├── models/
│   ├── all_expenses_item_model.dart
│   ├── drawer_item_model.dart
│   ├── income_chart_detail_model.dart
│   ├── transaction_history_item_model.dart
│   └── user_info_model.dart
├── utils/
│   ├── app_images.dart      # Image asset constants
│   └── app_styles.dart      # App-wide styling constants
├── views/
│   ├── layouts/
│   │   └── adaptive_layout.dart  # Responsive layout implementation
│   ├── widgets/
│   │   └──shboard section/
│   │   └── first section/ -no thing important here just to test something-
│   └── first_screen_home.dart
└── main.dart               # Application entry point
```

## Dependencies

This project uses several key Flutter packages to implement its features:

- **device_preview**: ^1.2.0 - For testing and previewing the app on different device sizes and configurations
- **expandable_page_view**: ^1.0.17 - Implements expandable page views for dynamic content
- **fl_chart**: ^0.71.0 - Creates beautiful and responsive charts for data visualization
- **flutter_svg**: ^2.0.17 - Renders SVG files for crisp, scalable graphics
- **gap**: ^3.0.1 - Provides a simple way to add spacing between widgets
- **http**: ^1.3.0 - Handles HTTP requests for API integration

## Getting Started

### Prerequisites

- Flutter SDK (Latest stable version)
- Dart SDK
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/responsive-learn.git
```

2. Navigate to the project directory:

```bash
cd responsive-learn
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## Development Features

- Uses Device Preview for testing different screen sizes
- Implements adaptive layouts for optimal viewing across devices
- Structured project architecture for scalability
- Model-based data management
- HTTP client integration for API calls

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
