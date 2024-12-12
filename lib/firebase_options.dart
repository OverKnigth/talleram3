// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAzkNEOQwqnA3-XqkUH-i8KsuB3vL7WWf0',
    appId: '1:818004666223:web:e1edb66bc2fa8fd3f26a9a',
    messagingSenderId: '818004666223',
    projectId: 'app-log-c59c3',
    authDomain: 'app-log-c59c3.firebaseapp.com',
    storageBucket: 'app-log-c59c3.firebasestorage.app',
    measurementId: 'G-W62RLMQWX7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRlBU1Tuqrv8fD7p-_CbDw9RruKCGiXQw',
    appId: '1:818004666223:android:28b6595be7d2cef6f26a9a',
    messagingSenderId: '818004666223',
    projectId: 'app-log-c59c3',
    storageBucket: 'app-log-c59c3.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAzkNEOQwqnA3-XqkUH-i8KsuB3vL7WWf0',
    appId: '1:818004666223:web:5a3e24419e9972d5f26a9a',
    messagingSenderId: '818004666223',
    projectId: 'app-log-c59c3',
    authDomain: 'app-log-c59c3.firebaseapp.com',
    storageBucket: 'app-log-c59c3.firebasestorage.app',
    measurementId: 'G-QY2YV84EFN',
  );
}
