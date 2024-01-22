// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDJPJO5lBBY5UaqL7_3CLbEKel2l6euYeo',
    appId: '1:727908571115:web:107c8211acc27ddab3ebae',
    messagingSenderId: '727908571115',
    projectId: 'majlisauth',
    authDomain: 'majlisauth.firebaseapp.com',
    storageBucket: 'majlisauth.appspot.com',
    measurementId: 'G-MQ42Q0F71M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPq0VjGovGxjTanVN3RicoEMf5gGSKZo0',
    appId: '1:727908571115:android:78ee72c02d513400b3ebae',
    messagingSenderId: '727908571115',
    projectId: 'majlisauth',
    storageBucket: 'majlisauth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCV1a-1AWbPbcopmCkHMgzoljqro892lIY',
    appId: '1:727908571115:ios:12b4b1eb487a52a6b3ebae',
    messagingSenderId: '727908571115',
    projectId: 'majlisauth',
    storageBucket: 'majlisauth.appspot.com',
    iosBundleId: 'com.example.flutterApplication111',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCV1a-1AWbPbcopmCkHMgzoljqro892lIY',
    appId: '1:727908571115:ios:1ac1f660d872c311b3ebae',
    messagingSenderId: '727908571115',
    projectId: 'majlisauth',
    storageBucket: 'majlisauth.appspot.com',
    iosBundleId: 'com.example.flutterApplication111.RunnerTests',
  );
}