import 'package:fin_trac/main.dart';
import 'package:fin_trac/screens/newBudget_screen.dart';
import 'package:fin_trac/screens/newGoal_screen.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  // const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: mq.width * 0.04, vertical: 4),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          // Use Navigator to navigate to the NewBudgetPage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewBudgetPage()),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('images/budgets.jpg'),
          ),
          title: Text('Create Budgets'),
          subtitle: Text(
              'Start with budgets to have an efficient overview of your spending limits.'),
        ),
      ),
    );
  }
}

class GoalsCard extends StatelessWidget {
  // const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: mq.width * 0.04, vertical: 4),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          // Use Navigator to navigate to the NewBudgetPage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewGoalPage()),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('images/goals.png'),
          ),
          title: Text('Create Goals'),
          subtitle: Text(
              'Set your goals and have a quick overview of your progress.'),
        ),
      ),
    );
  }
}

// class AccountsCard extends StatefulWidget {
//   @override
//   _AccountsCardState createState() => _AccountsCardState();
// }

// class _AccountsCardState extends State<AccountsCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.yellow,
//       child: Padding(
//         padding: const EdgeInsets.all(15),
//         child: InkWell(
//           onTap: () {},
//           child: ListTile(
//             // leading: CircleAvatar(
//             //   backgroundColor: Colors.transparent,
//             //   child: Icon(Icons.add_circle_sharp, color: Colors.black),
//             // ),
//             title: Text('My Accounts'),
//             // subtitle: Text(
//             //     'Set your goals and have a quick overview of your progress.'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PieChartCard extends StatefulWidget {
//   @override
//   _PieChartCardState createState() => _PieChartCardState();
// }

// class _PieChartCardState extends State<PieChartCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.yellow,
//       child: Padding(
//         padding: const EdgeInsets.all(15),
//         child: InkWell(
//           onTap: () {},
//           child: ListTile(
//             // leading: CircleAvatar(
//             //   backgroundColor: Colors.transparent,
//             //   child: Icon(Icons.add_circle_sharp, color: Colors.black),
//             // ),
//             title: Text('Pie Chart'),
//             // subtitle: Text(
//             //     'Set your goals and have a quick overview of your progress.'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HistoryCard extends StatefulWidget {
//   @override
//   _HistoryCardState createState() => _HistoryCardState();
// }

// class _HistoryCardState extends State<HistoryCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.yellow,
//       child: Padding(
//         padding: const EdgeInsets.all(15),
//         child: InkWell(
//           onTap: () {},
//           child: ListTile(
//             // leading: CircleAvatar(
//             //   backgroundColor: Colors.transparent,
//             //   child: Icon(Icons.add_circle_sharp, color: Colors.black),
//             // ),
//             title: Text('History'),
//             // subtitle: Text(
//             //     'Set your goals and have a quick overview of your progress.'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class LineChartCard extends StatefulWidget {
//   @override
//   _LineChartCardState createState() => _LineChartCardState();
// }

// class _LineChartCardState extends State<LineChartCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.yellow,
//       child: Padding(
//         padding: const EdgeInsets.all(15),
//         child: InkWell(
//           onTap: () {},
//           child: ListTile(
//             // leading: CircleAvatar(
//             //   backgroundColor: Colors.transparent,
//             //   child: Icon(Icons.add_circle_sharp, color: Colors.black),
//             // ),
//             title: Text('Line Chart'),
//             // subtitle: Text(
//             //     'Set your goals and have a quick overview of your progress.'),
//           ),
//         ),
//       ),
//     );
//   }
// }
