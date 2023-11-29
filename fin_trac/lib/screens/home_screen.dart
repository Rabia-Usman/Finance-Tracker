import 'package:fin_trac/apis/apis.dart';
import 'package:fin_trac/screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('FinTrac'),
          actions: [
            IconButton(
              onPressed: () async {
                await APIs.auth.signOut();
                await GoogleSignIn().signOut();
              },
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: 'Accounts',
                ),
                Tab(
                  text: 'Budgets & Goals',
                ),
              ],
              labelColor: Colors.black,
            ),
            Expanded(
                child: TabBarView(
              children: [
                // AccountsScreen(),
                // BudgetScreen(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
