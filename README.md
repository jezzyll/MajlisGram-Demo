# MajlisGram - College Management App

MajlisGram is a powerful and user-friendly college management app built with Flutter and Firebase. This app simplifies the process of managing student information, providing a seamless experience for both administrators and students. The integration of Flutter for the frontend and Firebase for the backend ensures a robust and scalable solution.(Flutter application-111)

# Features

- **Authentication System**

Secure user authentication using Firebase Authentication.
User-friendly sign-up and login pages for easy onboarding.

- **Student Details Collection**

Gather essential student information during the sign-up process.
Store collected details securely in Firebase Firestore.

# Getting Started
Follow these steps to set up and run MajlisGram locally:

# Prerequisites

Ensure you have Flutter installed. If not, follow the instructions here to get started.
Set up a Firebase project and obtain the necessary configuration files.

# Installation
- Clone the repository:

```
bash
Copy code
git clone https://github.com/your-username/MajlisGram.git
```

- Navigate to the project directory:

```
bash
Copy code
cd MajlisGram
```

- Install dependencies:

```
bash
Copy code
flutter pub get
```
- Add your Firebase configuration files:

```
Add google-services.json for Android in the android/app directory.
Add GoogleService-Info.plist for iOS in the ios directory.
```
- Run the app:
```
bash
Copy code
flutter run
```

# Firebase Configuration

`Ensure that you have set up Firebase for authentication and Firestore. Update the configuration files with your Firebase project details.`

# Authentication

`Enable Email/Password sign-in method in the Firebase console.
Add your app's SHA-1 certificate fingerprint for Android and bundle identifier for iOS in the Firebase project settings.`

# Firestore

`Create a Firestore database in the Firebase console.
Configure Firestore security rules as needed for your application.`

# Contributing
Contributions are welcome! Please follow our contribution guidelines to contribute to MajlisGram.


## API Reference

#### Get all items

```http
  GET /api/items
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

#### Get item

```http
  GET /api/items/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |

#### add(num1, num2)

Takes two numbers and returns the sum.


## Badges

Add badges from somewhere like: [shields.io](https://shields.io/)

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

## Color Reference

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Example Color | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) #0a192f |
| Example Color | ![#f8f8f8](https://via.placeholder.com/10/f8f8f8?text=+) #f8f8f8 |
| Example Color | ![#00b48a](https://via.placeholder.com/10/00b48a?text=+) #00b48a |
| Example Color | ![#00d1a0](https://via.placeholder.com/10/00b48a?text=+) #00d1a0 |


## Author

- [@jezzyll](https://github.com/jezzyll)


## Used By

This project is used by the following institutions:

- Majlis College
- ASAS 



# License
This project is licensed under the MIT License.

# Acknowledgments
Thanks to the Flutter and Firebase communities for their excellent documentation and support.
