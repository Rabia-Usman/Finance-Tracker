import 'package:fin_trac/main.dart';
import 'package:fin_trac/widgets/cards.dart';
import 'package:flutter/material.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({super.key});

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  @override
  Widget build(BuildContext context) {
    // Building a ListView with two items: BudgetCard and GoalsCard
    return ListView.builder(
      itemCount: 2,
      padding: EdgeInsets.only(top: mq.height * .02),
      itemBuilder: (context, index) {
        // Displaying BudgetCard for the first item in the list
        if (index == 0) {
          return BudgetCard();
        }
        // Displaying GoalsCard for the second item in the list
        else {
          return GoalsCard();
        }
      },
    );
  }
}
