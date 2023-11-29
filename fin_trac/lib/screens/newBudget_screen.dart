import 'package:fin_trac/widgets/dialogs.dart';
import 'package:flutter/material.dart';

class NewBudgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              // Add logic for close button
              Navigator.pop(context);
            }),
        title: Text('New Budget'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Add logic for check button
              Dialogs.showSnackbar(context, 'Budget added succesfully!');
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Budget Name:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter budget name',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Amount:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter amount',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Period:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter period',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Category:'),
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
                // Add logic for dropdown value change
              },
              hint: Text('Select category'),
            ),
            SizedBox(height: 16.0),
            Text('Accounts:'),
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
                // Add logic for dropdown value change
              },
              hint: Text('Select account'),
            ),
          ],
        ),
      ),
    );
  }
}
