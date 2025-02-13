# Tic-Tac-Toe Game

A fully interactive Tic-Tac-Toe game developed using Flutter and Dart for mobile application development. This project provides an engaging gameplay experience with smooth animations, appealing UI, and multiple game modes.

## Features

- **Classic Tic-Tac-Toe Gameplay** - Standard 3x3 grid for two players.
- **Interactive UI** - Beautiful and intuitive user interface with background images.
- **Multiple Screens** - Includes home screen, game screen, and settings screen.
- **Player vs Player Mode** - Allows two players to compete locally on the same device.
- **Smooth Animations** - Ensures a seamless and engaging user experience.
- **Responsive Design** - Works across different screen sizes and orientations.
- **Sound Effects** - Adds a more immersive experience.

## Screenshots

_You can add screenshots here to showcase your app's UI and gameplay._

## Installation

To run this project on your local machine, follow these steps:

1. **Clone this repository**:
   ```bash
   git clone https://github.com/your-username/tic-tac-toe-flutter.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd tic-tac-toe-flutter
   ```
3. **Install dependencies**:
   ```bash
   flutter pub get
   ```
4. **Run the application**:
   ```bash
   flutter run
   ```

## Requirements

- **Flutter SDK** (Latest stable version)
- **Dart SDK**
- **Android Studio or Visual Studio Code** (with Flutter extension)
- **A connected mobile device or emulator**

## Folder Structure

```
📦 tic-tac-toe-flutter
 ┣ 📂 lib
 ┃ ┣ 📂 screens
 ┃ ┃ ┣ 📜 home_screen.dart        # Home screen UI and logic
 ┃ ┃ ┣ 📜 game_screen.dart        # Main game screen and logic
 ┃ ┃ ┗ 📜 settings_screen.dart     # Settings and configurations
 ┃ ┣ 📂 utils
 ┃ ┃ ┗ 📜 game_logic.dart         # Game logic and winner validation
 ┃ ┣ 📂 widgets
 ┃ ┃ ┗ 📜 custom_button.dart      # Reusable UI components
 ┃ ┗ 📜 main.dart                 # Entry point of the application
 ┣ 📂 assets
 ┃ ┗ 📜 background.png            # Background image for UI
 ┣ 📂 test                        # Unit and widget testing files
 ┣ 📜 pubspec.yaml                # Project dependencies and assets
 ┗ 📜 README.md                   # Project documentation
```

## How to Play

1. Launch the app.
2. Choose the "Start Game" option.
3. Player 1 (X) and Player 2 (O) take turns selecting an empty grid cell.
4. The game detects a winner or declares a draw if the grid is full.
5. Restart the game to play again.



