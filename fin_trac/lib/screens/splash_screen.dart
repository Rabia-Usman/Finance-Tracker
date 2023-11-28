import 'package:fin_trac/apis/apis.dart';
import 'package:fin_trac/main.dart';
import 'package:fin_trac/screens/home_screen.dart';
import 'package:fin_trac/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

      if (APIs.auth.currentUser != null) {
        print('\nUser: ${APIs.auth.currentUser}');
        // Navigate to login screen
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      } else {
        // Navigate to login screen
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
      }
    });
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to FinTrac'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: mq.height * 0.15,
            right: mq.width * 0.25,
            width: mq.width * 0.5,
            child: Image.asset('images/icon.png'),
          ),
          Positioned(
              bottom: mq.height * 0.15,
              width: mq.width * 0.9,
              child: const Text(
                'Made by Abdullah',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, color: Colors.green, letterSpacing: 1),
              )),
        ],
      ),
    );
  }
}
