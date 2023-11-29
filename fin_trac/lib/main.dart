import 'package:fin_trac/screens/home_screen.dart';
import 'package:fin_trac/screens/newGoal_screen.dart';
import 'package:fin_trac/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Global variable to store the screen size
late Size mq;

void main() {
  // Ensure that widgets are initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();

  // Set system UI mode to immersive sticky
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  // Set preferred screen orientations
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) {
    // Initialize Firebase
    _initializeFirebase();

    // Run the app
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinTrac',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.green),
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 19),
          backgroundColor: Colors.white,
        ),
      ),
      home: SplashScreen(),
    );
  }
}

// Function to initialize Firebase
_initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
