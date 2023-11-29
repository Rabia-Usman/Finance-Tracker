import 'package:fin_trac/widgets/dialogs.dart';
import 'package:flutter/material.dart';

class NewGoalPage extends StatelessWidget {
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
        title: Text('New Goal'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Add logic for check button
              Dialogs.showSnackbar(context, 'Goal added succesfully!');
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
            SizedBox(height: 16.0),
            Text('Goal:'),
            DropdownButton<String>(
              items: [
                'Vehicle',
                'Home',
                'Holiday Trip',
                'Education',
                'Emergency Fund',
                'Health Care',
                'Party',
                'Kids Spoiling',
                'Charity',
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
              hint: Text('Select Goal'),
            ),
            Text('Amount:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Target Amount',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Saved:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter already saved amount',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Desired Date:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'dd-mm-yyyy',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
