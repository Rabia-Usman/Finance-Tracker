import 'package:fin_trac/apis/apis.dart';
import 'package:fin_trac/screens/navbar.dart';
import 'package:fin_trac/screens/accounts_screen.dart';
import 'package:fin_trac/screens/budgetAndGoal_screen.dart';
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
        // Drawer containing navigation options
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('FinTrac'),
          actions: [
            // Notification icon in the app bar
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
        body: const Column(
          children: [
            // TabBar for switching between "Accounts" and "Budgets & Goals"
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
            // TabBarView containing the respective screens for each tab
            Expanded(
              child: TabBarView(
                children: [
                  // Screen for displaying accounts
                  AccountsScreen(),
                  // Screen for displaying budgets and goals
                  BudgetScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
