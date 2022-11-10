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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC4VluIIU7PA7A9bn0_V-ijUzDpyCCBvHI',
    appId: '1:159362299782:web:ff6c6e7a5d234424d01e07',
    messagingSenderId: '159362299782',
    projectId: 'saveorlife',
    authDomain: 'saveorlife.firebaseapp.com',
    storageBucket: 'saveorlife.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCoNY8Gp3rYIOgGVMlRqTzvFzjn9FicVPs',
    appId: '1:159362299782:android:e50adb0da36e45dcd01e07',
    messagingSenderId: '159362299782',
    projectId: 'saveorlife',
    storageBucket: 'saveorlife.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYsz-MD3_dfGVlwTchgYIvXR6dvVhbFCE',
    appId: '1:159362299782:ios:df0c1c16f74619d4d01e07',
    messagingSenderId: '159362299782',
    projectId: 'saveorlife',
    storageBucket: 'saveorlife.appspot.com',
    iosClientId: '159362299782-g5diqf15nka34r3r2phj5gtifgva1s9n.apps.googleusercontent.com',
    iosBundleId: 'com.mycompany.aaaaaprojeto',
  );
}