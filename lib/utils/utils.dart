import 'package:flutter/material.dart';
import 'package:queezy/utils/spacing.dart';

bool isValidEmail(String email) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  return emailValid;
}

void showSnackBar({required BuildContext context, required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

void showProgressDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              horizontalSpacing(space: 24),
              Text('Loading...'),
            ],
          ),
        );
      });
}
