import 'package:fin_trac/main.dart';
import 'package:fin_trac/screens/newAccounts_screen.dart';
import 'package:fin_trac/screens/newBudget_screen.dart';
import 'package:fin_trac/screens/newGoal_screen.dart';
import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      // Card widget for creating a budget
      margin: EdgeInsets.symmetric(horizontal: mq.width * 0.04, vertical: 10),
      elevation: 4,
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
  @override
  Widget build(BuildContext context) {
    return Card(
      // Card widget for creating goals
      margin: EdgeInsets.symmetric(horizontal: mq.width * 0.04, vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          // Use Navigator to navigate to the NewGoalPage
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

class AccountsCard extends StatefulWidget {
  final String text;
  final IconData icon;

  AccountsCard({required this.icon, required this.text});

  @override
  _AccountsCardState createState() => _AccountsCardState();
}

class _AccountsCardState extends State<AccountsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the new screen here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewAccountPage()),
        );
      },
      child: Card(
        // Card widget for displaying accounts
        elevation: 4.0,
        margin: EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
          left: 20.0,
          right: 50.0,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 6.0),
          child: Row(
            children: [
              Icon(
                widget.icon,
                size: 24.0,
                color: Colors.black,
              ),
              SizedBox(width: 16.0),
              Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard extends StatefulWidget {
  @override
  _HistoryCardState createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // Card widget for displaying transaction history
      color: const Color.fromARGB(255, 229, 224, 224),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '+ Cash 5000',
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(height: 16.0),
            Text(
              '- Bank 30000',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

// class PieChartCard extends StatefulWidget {
//   @override
//   _PieChartCardState createState() => _PieChartCardState();
// }

// class _PieChartCardState extends State<PieChartCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Scaffold(
//         body: Center(
//           child: Container(
//             child: SfCircularChart(
//               series: <CircularSeries>[
//                 // Example series, you can customize this based on your data
//                 DoughnutSeries<ChartData, String>(
//                   dataSource: <ChartData>[
//                     ChartData('Category A', 25),
//                     ChartData('Category B', 35),
//                     ChartData('Category C', 20),
//                     ChartData('Category D', 10),
//                     ChartData('Category E', 10),
//                   ],
//                   xValueMapper: (ChartData data, _) => data.category,
//                   yValueMapper: (ChartData data, _) => data.value,
//                   dataLabelSettings: DataLabelSettings(isVisible: true),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }