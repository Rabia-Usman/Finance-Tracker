import 'package:fin_trac/apis/apis.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  //sign out function
  signOut() async {
    await APIs.auth.signOut();
    await GoogleSignIn().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Drawer(
          // backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
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
              ListTile(
                leading: Icon(Icons.file_upload),
                title: Text('Profile Settings'),
                onTap: () => print('Profile page here'),
              ),
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
