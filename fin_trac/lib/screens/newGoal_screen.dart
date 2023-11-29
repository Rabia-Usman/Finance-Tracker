import 'package:fin_trac/widgets/dialogs.dart';
import 'package:flutter/material.dart';

class NewGoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Close button in the app bar leading section
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            // Logic for close button
            Navigator.pop(context);
          },
        ),
        // Title of the page
        title: Text('New Goal'),
        // Action buttons in the app bar
        actions: [
          IconButton(
            // Check button in the app bar
            icon: Icon(Icons.check),
            onPressed: () {
              // Logic for check button
              Dialogs.showSnackbar(context, 'Goal added successfully!');
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
            SizedBox(height: 16.0),
            Text('Goal:'),
            // Dropdown for selecting the goal type
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
                // Logic for dropdown value change
              },
              hint: Text('Select Goal'),
            ),
            Text('Amount:'),
            // Text field for entering the target amount
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Target Amount',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Saved:'),
            // Text field for entering the already saved amount
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter already saved amount',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Desired Date:'),
            // Text field for entering the desired date
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
