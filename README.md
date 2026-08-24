# Note Hop
An app for aspiring music students that makes music education collaborative, fun, and free.

## Platforms Supported and Minimum OS Version
* **Platform:** iOS (iPhone)
* **Minimum OS Version:** iOS 26.5+

## Permissions Required & Why
* **iOS Hardware Permissions:** **None.** The app does not request or require access to physical device hardware (such as Camera, GPS/Location, Bluetooth, or Contacts).
* **Data & Cloud Connectivity:** The app connects to **Firebase Cloud Database/Authentication**. This connection is strictly used to authenticate user accounts and securely sync user-generated profile data so it is saved across sessions. No data is shared with third parties or used for tracking purposes!


## Development Setup & Local Reproduction

Here is a one minute walkthrough of the app:
https://www.youtube.com/watch?v=KWcRyOvhUOo&feature=youtu.be

OR ALTERNATIVELY, you could try it out yourself!

Since this application cannot be published directly to the App Store without an active Apple Developer Account, follow these steps to set up the development environment and run the project locally on your machine.

### 📋 Prerequisites
* **macOS**: A computer running macOS is required to compile iOS apps.
* **Xcode**: The latest version of Xcode installed via the Mac App Store.

### Firebase Configuration Setup
This project utilizes **Firebase Auth and Firestore** for user logins. Because security configuration files (`GoogleService-Info.plist`) are git-ignored, you must link your own Firebase instance to run the build:

1. Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
2. Click the **iOS+** button to register a new Apple App. Use a mock bundle ID (e.g., `com.yourname.NoteHop`).
3. Download the generated `GoogleService-Info.plist` file.
4. Drag and drop your `GoogleService-Info.plist` file directly into the root folder of the Xcode project hierarchy, ensuring "Copy items if needed" is checked.
5. In your Firebase Console, turn on **Email/Password Authentication** and create a **Firestore Database** in test mode.

### Launching the App
1. Clone this repository to your Mac terminal:
   ```bash
   git clone https://github.com
   ```
2. Open Xcode, select **File > Open...**, and open the project directory.
3. Wait for Xcode's **Swift Package Manager (SPM)** to automatically download the Firebase dependencies listed in the project.
4. Choose an iPhone simulator from the top toolbar scheme and press **Cmd + R** to build and run.


## Screenshots

Login Page

<img width="326" height="530" alt="Screenshot 2026-08-03 at 9 35 38 AM" src="https://github.com/user-attachments/assets/4296520e-732e-4e67-b7ff-735f9c2f4172" />


Home Page

<img width="313" height="523" alt="Screenshot 2026-08-03 at 9 39 03 AM" src="https://github.com/user-attachments/assets/9b5c2931-7dd2-4ef5-9fb6-23b9972742a0" />

<img width="314" height="527" alt="Screenshot 2026-08-03 at 9 40 12 AM" src="https://github.com/user-attachments/assets/0a6331e2-a7a9-4f1e-852d-b5288d41ed57" />


Music Library and Sheet Music Viewer

<img width="318" height="533" alt="Screenshot 2026-08-03 at 9 41 08 AM" src="https://github.com/user-attachments/assets/096eb24a-b454-4594-9e7e-8c67bd28ab55" />

<img width="325" height="533" alt="Screenshot 2026-08-03 at 9 41 45 AM" src="https://github.com/user-attachments/assets/a113cfb5-e5af-4f25-8a81-d65c1a0531f0" />


Course Paths

<img width="316" height="520" alt="Screenshot 2026-08-03 at 9 42 24 AM" src="https://github.com/user-attachments/assets/115ae215-f6d5-4386-a07c-4638169ab452" />


Instrument Lessons and Questions

<img width="301" height="530" alt="Screenshot 2026-08-03 at 9 51 25 AM" src="https://github.com/user-attachments/assets/386be121-a9fc-444f-a4ce-8f63e25cb6c6" />

<img width="317" height="531" alt="Screenshot 2026-08-03 at 9 51 54 AM" src="https://github.com/user-attachments/assets/84d3705e-1a30-4d53-94d3-eb6a7621049e" />


