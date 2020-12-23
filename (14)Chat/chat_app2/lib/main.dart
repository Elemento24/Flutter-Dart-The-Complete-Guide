import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import './screens/auth_screen.dart';
import './screens/chat_screen.dart';
import './screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

final Future<FirebaseApp> _initialization = Firebase.initializeApp();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (ctx, appSnapshot) {
        return MaterialApp(
          title: 'Flutter Chat',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            backgroundColor: Colors.pink,
            accentColor: Colors.deepPurple,
            accentColorBrightness: Brightness.dark,
            buttonTheme: ButtonTheme.of(context).copyWith(
              buttonColor: Colors.pink,
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          home: appSnapshot.connectionState != ConnectionState.done
              ? SplashScreen()
              : StreamBuilder(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (ctx, userSnapshot) {
                    if (userSnapshot.connectionState == ConnectionState.waiting)
                      return SplashScreen();
                    if (userSnapshot.hasData) return ChatScreen();
                    return AuthScreen();
                  },
                ),
        );
      },
    );
  }
}
