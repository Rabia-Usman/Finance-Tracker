import 'package:fin_trac/widgets/dialogs.dart';
import 'package:flutter/material.dart';

class NewAccountPage extends StatelessWidget {
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
        title: Text('Manage Account'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Check button logic
              Dialogs.showSnackbar(context, 'Account added successfully!');
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
            Text('Account:'),
            // Dropdown for selecting the account type
            DropdownButton<String>(
              items: [
                'Habib Bank',
                'Meezan Bank',
                'Jazz Cash',
                'Easy Paisa',
                'Sada Pay',
                'Other',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Logic for dropdown value change
              },
              hint: Text('Select Account'),
            ),
            SizedBox(height: 16.0),
            Text('Initial Amount:'),
            // Text field for entering the initial amount
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter initial account value',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Currency:'),
            // Text field for entering the currency
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter currency',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Currency:'),
            // Dropdown for selecting the currency
            DropdownButton<String>(
              items: [
                'PKR',
                'Other',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Logic for dropdown value change
                // setState(() {
                //   selectedValue = newValue;
                // });
              },
              hint: Text('Select Currency'),
            ),
          ],
        ),
      ),
    );
  }
}
