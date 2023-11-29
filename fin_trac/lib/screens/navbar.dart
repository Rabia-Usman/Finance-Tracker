import 'package:fin_trac/apis/apis.dart';
import 'package:fin_trac/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Sign out function
    // This function signs out the user from Firebase authentication and Google Sign-In
    // After signing out, it navigates to the SplashScreen
    signOut() async {
      await APIs.auth.signOut();
      await GoogleSignIn().signOut();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
      );
    }

    return Container(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // User account drawer header with user information
              UserAccountsDrawerHeader(
                accountName: const Text('Abdullah Nasir'),
                accountEmail: const Text('abdullahnasir8888@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Icon(Icons.account_box),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
              // ListTile for navigating to profile settings (dummy onTap logic)
              ListTile(
                leading: Icon(Icons.file_upload),
                title: Text('Profile Settings'),
                onTap: () => print('Profile page here'),
              ),
              // ListTile for signing out with onTap calling the signOut function
              ListTile(
                leading: Icon(Icons.arrow_circle_left_sharp),
                title: Text('Sign Out'),
                onTap: () => signOut(),
              ),
            ],
          ),
        ));
  }
}
