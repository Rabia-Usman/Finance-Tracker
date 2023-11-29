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
    return Scaffold(
      body: StreamBuilder(
        stream: APIs.firestore.collection('Users').snapshots(),
        builder: (context, snapshot) {
          final list = [];
          if (snapshot.hasData) {
            final data = snapshot.data?.docs;
            for (var i in data!) {
              print('Data: ${i.data()}');
              list.add(i.data()['name']);
            }
          }
          return ListView.builder(
            itemCount: list.length,
            padding: EdgeInsets.only(top: mq.height * .02),
            itemBuilder: (context, index) {
              // if (index == 0) {
              //   return AccountsCard();
              // } else if (index == 1) {
              //   return PieChartCard();
              // } else if (index == 2) {
              //   return HistoryCard();
              // } else {
              //   return LineChartCard();
              // }
              return Text(
                'Name: ${list[index]}',
                style: TextStyle(color: Colors.black),
              );
            },
          );
        },
      ),
    );
  }
}
