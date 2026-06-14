# Spend Summary

A beautifully designed, single-screen Flutter application that displays a user's spend summary, built as part of an interview assignment.

## Features

- **Header Card**: Displays total monthly spend with a dynamically calculated percentage change indicator.
- **Horizontal Category Scroll**: A scrollable list of expense categories (Food, Travel, Shopping, etc.) showing custom icons and total amounts spent per category.
- **Recent Transactions List**: A full list of 57 hardcoded mock transactions, each displaying category, title, date, and amount.
- **Floating Action Button**: Positioned at the bottom right for primary actions.
- **Creative UI**: Implemented a sleek Dark Theme with subtle gradients, card elevations, and rounded corner aesthetics.
- **Smooth Interactions**: Utilizes Flutter's BouncingScrollPhysics for a natural, native-feeling scroll experience.

## AI Tools Used

- **Google Antigravity IDE (Gemini 3.1 Pro)**: 
  - I used this advanced autonomous agentic IDE to interpret the image requirements, scaffold the Flutter project structure, generate the mock data logic (specifically generating exactly 57 diverse transactions), and write the complete UI code incorporating modern Flutter best practices. The AI agent also generated this README and created the structured folder layout.

## How to Run

Since the source code was generated directly, you will need to initialize it as a Flutter project to run it on an emulator or device:

1. Make sure you have Flutter installed (`flutter --version`).
2. Open a terminal in the `spend_summary` folder.
3. Run `flutter create .` to initialize the missing platform folders (`android`, `ios`, etc.).
4. Run `flutter pub get` to install dependencies (like `intl` and `cupertino_icons`).
5. Run `flutter run` to launch the app on your emulator or connected device.

## Screenshots

<img width="1080" height="2340" alt="Screenshot_1781415858" src="https://github.com/user-attachments/assets/20567243-a508-48d4-9ecb-6df3ce5e14c5" />
<img width="1080" height="2340" alt="Screenshot_1781415869" src="https://github.com/user-attachments/assets/207de7e7-6f68-4edf-a87b-d3abcb0f7d7b" />

