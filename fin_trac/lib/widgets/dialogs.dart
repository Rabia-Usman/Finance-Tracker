import 'package:flutter/material.dart';

class Dialogs {
  // Method to show a Snackbar with a given message
  static void showSnackbar(BuildContext context, String msg) {
    // Display a Snackbar using the ScaffoldMessenger
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(msg),
        backgroundColor: Colors.blue.withOpacity(.8),
        behavior: SnackBarBehavior.floating));
  }

  // Method to show a circular progress indicator as a dialog
  static void showProgressBar(BuildContext context) {
    // Display a dialog with a CircularProgressIndicator at the center
    showDialog(
        context: context,
        builder: (_) => const Center(child: CircularProgressIndicator()));
  }
}
