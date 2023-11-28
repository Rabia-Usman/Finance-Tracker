import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

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
                accountName: const Text('dummy text'),
                accountEmail: const Text('dummy text'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
              ListTile(
                leading: Icon(Icons.file_upload),
                title: Text('Upload Shot'),
                onTap: () => print('upload tapped'),
              ),
              ListTile(
                leading: Icon(Icons.file_upload),
                title: Text('Upload Shot'),
                onTap: () => print('upload tapped'),
              ),
              ListTile(
                leading: Icon(Icons.file_upload),
                title: Text('Upload Shot'),
                onTap: () => print('upload tapped'),
              ),
            ],
          ),
        ));
  }
}
