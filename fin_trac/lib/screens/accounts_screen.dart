import 'package:fin_trac/apis/apis.dart';
import 'package:fin_trac/widgets/cards.dart';
import 'package:fin_trac/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:fin_trac/main.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    // body: StreamBuilder(
    //   stream: APIs.firestore.collection('Users').snapshots(),
    // builder: (context, snapshot) {
    //   final list = [];
    //   if (snapshot.hasData) {
    //     final data = snapshot.data?.docs;
    //     for (var i in data!) {
    //       print('Data: ${i.data()}');
    //       list.add(i.data()['name']);
    //     }
    //   }
    // ),
    // );
    // }

    // Building a ListView with different account cards and a history card
    return ListView.builder(
      itemCount: 6,
      padding: EdgeInsets.only(top: mq.height * .02),
      itemBuilder: (context, index) {
        if (index == 0) {
          // Displaying Meezan Bank account card
          return Center(
            child: GestureDetector(
              onTap: () {
                // Handle the click action for Meezan Bank account
                print('Meezan Bank Card Clicked!');
              },
              child: AccountsCard(
                text: 'Meezan Bank 56000',
                icon: Icons.account_balance_sharp,
              ),
            ),
          );
        } else if (index == 1) {
          // Displaying JazzCash account card
          return Center(
            child: GestureDetector(
              onTap: () {
                // Handle the click action for JazzCash account
                print('JazzCash Card Clicked!');
              },
              child: AccountsCard(
                text: 'JazzCash 6500',
                icon: Icons.ad_units,
              ),
            ),
          );
        } else if (index == 2) {
          // Displaying "Add Account" card
          return Center(
            child: GestureDetector(
              onTap: () {
                // Handle the click action for "Add Account" card
                print('Add Account Card Clicked!');
              },
              child: AccountsCard(
                text: 'Add Account',
                icon: Icons.add_box_rounded,
              ),
            ),
          );
        } else if (index == 3) {
          // Displaying history card
          return HistoryCard();
        }
      },
    );
  }
}
