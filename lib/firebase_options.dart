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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyDRpP0sBT1qmBUFnIdWc3Ad18pwB0yhVuQ',
    appId: '1:677133458853:web:97576cc65e8f8506da9c4c',
    messagingSenderId: '677133458853',
    projectId: 'shopping-app-72c57',
    authDomain: 'shopping-app-72c57.firebaseapp.com',
    storageBucket: 'shopping-app-72c57.appspot.com',
    measurementId: 'G-1CGC4GDMJD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-PCxmBgPQ8Cid3xO7jRuUmm8lnJU1UC4',
    appId: '1:677133458853:android:ac30bb75e54975bbda9c4c',
    messagingSenderId: '677133458853',
    projectId: 'shopping-app-72c57',
    storageBucket: 'shopping-app-72c57.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDp3O89QTu9HU6AE9cXAjHGdZBgBs7TRvU',
    appId: '1:677133458853:ios:ccdb7fe9ac0339f4da9c4c',
    messagingSenderId: '677133458853',
    projectId: 'shopping-app-72c57',
    storageBucket: 'shopping-app-72c57.appspot.com',
    iosBundleId: 'com.example.shoppingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDp3O89QTu9HU6AE9cXAjHGdZBgBs7TRvU',
    appId: '1:677133458853:ios:ccdb7fe9ac0339f4da9c4c',
    messagingSenderId: '677133458853',
    projectId: 'shopping-app-72c57',
    storageBucket: 'shopping-app-72c57.appspot.com',
    iosBundleId: 'com.example.shoppingApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDRpP0sBT1qmBUFnIdWc3Ad18pwB0yhVuQ',
    appId: '1:677133458853:web:7477e7db34d5bd59da9c4c',
    messagingSenderId: '677133458853',
    projectId: 'shopping-app-72c57',
    authDomain: 'shopping-app-72c57.firebaseapp.com',
    storageBucket: 'shopping-app-72c57.appspot.com',
    measurementId: 'G-WEMQGPW524',
  );
}
