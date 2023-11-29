import 'dart:io';
import 'package:fin_trac/apis/apis.dart';
import 'package:fin_trac/main.dart';
import 'package:fin_trac/widgets/dialogs.dart';
import 'package:fin_trac/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAnimate = false;

  @override
  void initState() {
    super.initState();
    // Delay the animation to create a smoother entrance
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        isAnimate = true;
      });
    });
  }

  // Handling Google sign-in button click
  void _handlingGoogleButtonClick() {
    // Show progress bar while signing in with Google
    Dialogs.showProgressBar(context);
    _signInWithGoogle().then((user) {
      // Dismiss progress bar
      Navigator.pop(context);

      // Navigate to the HomeScreen if sign-in is successful
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
      }
    });
  }

  // Asynchronous function to sign in with Google
  Future<UserCredential?> _signInWithGoogle() async {
    try {
      // Check if there is an internet connection
      await InternetAddress.lookup('google.com');

      // Trigger the Google sign-in flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the authentication details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Sign in with the obtained credential and return the UserCredential
      return await APIs.auth.signInWithCredential(credential);
    } catch (e) {
      // Handle errors during Google sign-in
      print('\nGoogle sign-in error: ${e}');
      Dialogs.showSnackbar(
        context,
        'Something went wrong (Check internet connection!)',
      );
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to FinTrac'),
      ),
      body: Stack(
        children: [
          // AnimatedPositioned widget for the FinTrac logo animation
          AnimatedPositioned(
            top: mq.height * 0.15,
            right: isAnimate ? mq.width * 0.25 : -mq.width * 0.5,
            width: mq.width * 0.5,
            duration: const Duration(seconds: 1),
            child: Image.asset('images/icon.png'),
          ),
          // Positioned widget for the Google sign-in button
          Positioned(
            bottom: mq.height * 0.15,
            left: mq.width * 0.05,
            width: mq.width * 0.9,
            height: mq.height * 0.06,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 223, 255, 187),
                shape: StadiumBorder(),
                elevation: 1,
              ),
              onPressed: () {
                _handlingGoogleButtonClick();
              },
              icon: Image.asset(
                'images/google.png',
                height: mq.height * 0.05,
              ),
              label: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: 'Login with '),
                    TextSpan(
                      text: 'Google',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
