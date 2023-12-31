import 'package:fin_trac/widgets/dialogs.dart';
import 'package:flutter/material.dart';

class NewBudgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with close and check buttons
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            // Close button logic
            Navigator.pop(context);
          },
        ),
        title: Text('New Budget'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Check button logic
              Dialogs.showSnackbar(context, 'Budget added successfully!');
              Navigator.pop(context);
            },
          ),
        ],
      ),
      // Body of the page
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Budget Name:'),
            // Text field for entering budget name
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter budget name',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Amount:'),
            // Text field for entering the budget amount
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter amount',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Period:'),
            // Text field for entering the budget period
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter period',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Category:'),
            // Dropdown for selecting the budget category
            DropdownButton<String>(
              items: [
                'Food & Drink',
                'Shopping',
                'Housing',
                'Transportation',
                'Life & Entertainment',
                'Communication',
                'Investments',
                'Other'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Logic for dropdown value change
              },
              hint: Text('Select category'),
            ),
            SizedBox(height: 16.0),
            Text('Accounts:'),
            // Dropdown for selecting the budget account
            DropdownButton<String>(
              items: [
                'Cash',
                'Meezan Bank Ltd.',
                'Habib Bank Ltd.',
                'EasyPaisa',
                'JazzCash',
                'SadaPay'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Logic for dropdown value change
              },
              hint: Text('Select account'),
            ),
          ],
        ),
      ),
    );
  }
}
