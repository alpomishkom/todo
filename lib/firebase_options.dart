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
    apiKey: 'AIzaSyC2vYywf634pROKo2eRTYCa2yhDqKuCB2s',
    appId: '1:480417347684:web:cf6060141e74467d74c771',
    messagingSenderId: '480417347684',
    projectId: 'tudu-ea68b',
    authDomain: 'tudu-ea68b.firebaseapp.com',
    storageBucket: 'tudu-ea68b.appspot.com',
    measurementId: 'G-SH7V3ZRMLR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTV3UeR2KtvqXTz6uUoKJt_yd0s5aKFsA',
    appId: '1:480417347684:android:85e35b819ec98d5674c771',
    messagingSenderId: '480417347684',
    projectId: 'tudu-ea68b',
    storageBucket: 'tudu-ea68b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB05xfBJCc2PNI6y4yfT5cou5eyjeugUuQ',
    appId: '1:480417347684:ios:8dd9ab42cc4c5bd574c771',
    messagingSenderId: '480417347684',
    projectId: 'tudu-ea68b',
    storageBucket: 'tudu-ea68b.appspot.com',
    iosBundleId: 'com.example.toDu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB05xfBJCc2PNI6y4yfT5cou5eyjeugUuQ',
    appId: '1:480417347684:ios:a3a2d42a44eb6bc274c771',
    messagingSenderId: '480417347684',
    projectId: 'tudu-ea68b',
    storageBucket: 'tudu-ea68b.appspot.com',
    iosBundleId: 'com.example.toDu.RunnerTests',
  );
}