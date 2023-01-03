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
    apiKey: 'AIzaSyCBGEsWaiT7ujECdngWzkGgdsHjhLdsrJY',
    appId: '1:243690413404:web:c828d8105c43cd6f86f599',
    messagingSenderId: '243690413404',
    projectId: 'excerciseappbase',
    authDomain: 'excerciseappbase.firebaseapp.com',
    storageBucket: 'excerciseappbase.appspot.com',
    measurementId: 'G-QQMWH06K6D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADTGrNvOtj7Z6dk3HWaFcrgiP8KJnZEQI',
    appId: '1:243690413404:android:7d7cc16e5f631bae86f599',
    messagingSenderId: '243690413404',
    projectId: 'excerciseappbase',
    storageBucket: 'excerciseappbase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDd2g7cDO5FpD4KO3akmsVPsyRdrl5ax5I',
    appId: '1:243690413404:ios:fac32e86d31c691586f599',
    messagingSenderId: '243690413404',
    projectId: 'excerciseappbase',
    storageBucket: 'excerciseappbase.appspot.com',
    iosClientId: '243690413404-umlnhnmr4p1e53dq9en3f4uql8rodjfg.apps.googleusercontent.com',
    iosBundleId: 'com.example.exerciseapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDd2g7cDO5FpD4KO3akmsVPsyRdrl5ax5I',
    appId: '1:243690413404:ios:fac32e86d31c691586f599',
    messagingSenderId: '243690413404',
    projectId: 'excerciseappbase',
    storageBucket: 'excerciseappbase.appspot.com',
    iosClientId: '243690413404-umlnhnmr4p1e53dq9en3f4uql8rodjfg.apps.googleusercontent.com',
    iosBundleId: 'com.example.exerciseapp',
  );
}
