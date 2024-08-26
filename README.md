<br />
<div align="center">
  <a href="#">
    <img src="https://github.com/hashimsaffarini/MARVEL/blob/main/assets/svgs/marvel.svg" alt="Marvel Logo" width="150" height="150">
  </a>  

# 👋 Welcome! Marvel App README.md

<div align="start">
  
# Marvel App 🎬 

The Marvel app delivers a comprehensive experience of the Marvel universe, utilizing Hive for caching, the Marvel API for data retrieval, and following clean architecture principles with Bloc state management.

<div align="start">
  
# System design
    ├── lib
    │   ├── core
    │   │   ├── di
    │   │   ├── helpers
    │   │   ├── networking
    │   │   ├── routing
    │   │   ├── theming
    │   │   ├── widgets
    │   ├── features
    │   │   ├── home
    │   │   │   ├── data
    │   │   │   │   ├── apis
    │   │   │   │   ├── models
    │   │   │   │   ├── repos
    │   │   │   ├── logic
    │   │   │   │   ├── cubit
    │   │   │   ├── ui
    │   │   │   │   ├── widgets
    │   ├── main.dart
    │   ├── marvel_app.dart

## Features

Marvel App offers the following features:

- `Clean architecture`: The app adheres to clean architecture principles, promoting separation of concerns and maintainability.
- `Bloc state management`: Leverages Bloc for efficient state management, updating the UI in response to state changes.
- `Marvel API integration`: Retrieves and displays comprehensive data about Marvel characters, comics, and more using the Marvel API.
- `Local database (Hive)`: Uses Hive to cache data locally, ensuring data persistence and enabling offline access.

## App Video
https://www.linkedin.com/posts/hashim-saffarini_flutter-dart-mobile-activity-7233776683923722240-0I4k?utm_source=share&utm_medium=member_ios

## App Preview

|                          Home Screen                          |
| :-----------------------------------------------------------: |
| <img width="330" src="https://github.com/hashimsaffarini/MARVEL/blob/main/assets/images/i.png"> |
