# Kids Trakr UI

Kids Trakr UI is a Flutter project focused on building a clean, modular school monitoring interface.
It is structured to help teams add new features quickly and maintain the codebase easily.

## Core Features (UI Focus)

1. **Class Schedule Overview**
   Daily and weekly schedule layout with quick summary cards.
2. **Daily Attendance List**
   Student attendance screen with simple search and filter interactions.
3. **Student Progress / Scores**
   UI components to display student academic and activity progress.
4. **Teacher Messages**
   Dedicated message area for important updates between school and parents.
5. **School News Feed**
   News timeline UI for announcements and school activities.
6. **Nutrition Information**
   Meal and nutrition information screen for daily monitoring.
7. **Profile & Role Views**
   Profile screens prepared for different roles (Teacher/Student/Admin).

## Tech Stack

- **Framework:** [Flutter](https://flutter.dev/)
- **Language:** [Dart](https://dart.dev/)
- **State Management & Routing:** [GetX](https://pub.dev/packages/get)
- **Networking:** [Dio](https://pub.dev/packages/dio)
- **Storage:** Shared Preferences + Flutter Secure Storage
- **Assets:** `flutter_gen` + SVG support
- **Fonts:** Plus Jakarta Sans

## Project Initialization

### 1) Create your repository from a template (optional)

If you used **Use this template** on GitHub:

```bash
git clone https://github.com/your-username/your-new-repo.git
cd your-new-repo
```

### 2) Install dependencies

```bash
flutter pub get
```

### 3) Generate asset references

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4) Run the app

```bash
flutter run
```

### 5) Optional build commands

```bash
flutter build apk
flutter build ios
```

## Folder Structure

```text
kids_trakr_ui/
|-- lib/
|   |-- data/
|   |   |-- base/
|   |   |-- local_storage/
|   |   `-- remote/
|   |-- feature/
|   |   |-- auth/
|   |   |-- bottom_navigation/
|   |   |-- home/
|   |   |-- loader/
|   |   `-- login/
|   |-- model/
|   |-- routes/
|   |-- utils/
|   |-- gen/
|   `-- main.dart
|-- assets/
|   |-- fonts/
|   `-- icons/
|-- docs/
|   `-- ui/
|-- android/
|-- ios/
|-- test/
|-- pubspec.yaml
`-- README.md
```

## Notes

- This repository currently focuses on UI scaffolding and modular architecture.
- You can plug in real API endpoints and business logic progressively.
