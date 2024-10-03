# Amor Stories

Amor Stories is a mobile application developed using Flutter. This app allows users to create and view stories similar to popular social media platforms, with a focus on user-friendly interactions and smooth animations.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Folder Structure](#folder-structure)
- [Features](#features)
- [Screenshots](#screenshots)
- [Contributing](#contributing)

## Introduction

The Amor Stories app provides users a way to share moments through stories. Users can view, upload, and interact with stories, navigate through different screens, and create new stories with ease. The app's interface is designed to offer a smooth and responsive experience.

## Installation

To set up the app locally, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/manh-nguyen-dev/amor_stories.git
   ```

2. Install the necessary dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app on an emulator or a real device:

   ```bash
   flutter run
   ```

## Folder Structure

Here’s an overview of the folder structure for the Amor Stories app:

```plaintext
assets/
├── images/                  # Contains images used throughout the app
lib/
├── data/                    # Static or mock data for the app  
├── helpers/                 # Utility functions (e.g., time formatting)
├── models/                  # Data models for objects like stories and users
├── screens/                 # Screens such as StoryScreen, HomeScreen
├── services/                # Handles API calls, story handling logic, and business logic
├── utils/                   # General utility functions and constants
├── widgets/                 # Reusable UI components such as buttons, cards, and progress bars
└── main.dart                # Main entry point for the application
```

## Features

Completed
- Display user stories: View a list of stories from other users in a carousel format.
- Smooth navigation between stories: Seamlessly transition between stories with animations.
- Lightweight and fast performance: Optimized for quick loading times to provide a smooth experience.

Upcoming (TODO)
- Upload new stories with image support: Enable users to upload images and create their own stories.
- User-friendly interface improvements: Enhance the interface with more intuitive and fluid controls for a better user experience.
- Story progress bar customization: Allow users to customize the progress bar for each story (e.g., color, speed).
- Story expiration feature: Implement automatic expiration for stories after 24 hours.
- Offline support: View previously loaded stories even when the app is offline.
- Push notifications for new stories: Notify users when new stories are added by people they follow.
- Reactions and comments on stories: Allow users to interact with stories by leaving reactions and comments.
- Profile customization: Provide users the ability to personalize their profiles with avatars, bios, and story highlights.

## Screenshots

<div style="display: flex; justify-content: space-between;">

  <div style="flex: 0 0 48%; text-align: center;">
    <img src="https://i.ibb.co/bFnBDML/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-10-03-at-12-19-24.png" alt="Screenshot 1" style="width: 100%;"/>
    <img src="https://i.ibb.co/5Frgr24/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-10-03-at-12-19-43.png" alt="Screenshot 2" style="width: 100%;"/>
  </div>

  <div style="flex: 0 0 48%; text-align: center;">
    <img src="https://i.ibb.co/wdXd9zZ/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-10-03-at-12-19-49.png" alt="Screenshot 3" style="width: 100%;"/>
    <img src="https://i.ibb.co/qdxvV3j/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-10-03-at-12-19-53.png" alt="Screenshot 4" style="width: 100%;"/>
  </div>

</div>

## Contributing

If you would like to contribute to the `Amor Stories` project, follow these steps:

1. Fork the repository.
2. Create a new branch:

   ```bash
   git checkout -b feature/feature-name
   ```

3. Commit your changes:

   ```bash
   git commit -m 'Add feature XYZ'
   ```

4. Push your branch:

   ```bash
   git push origin feature/feature-name
   ```

5. Open a Pull Request on GitHub.