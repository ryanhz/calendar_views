import 'package:flutter/material.dart';

void showAlertDialog({
    BuildContext? context,
  String title = "Alert",
   required String message,
}) {
  assert(title != null);
  

  showDialog(
    context: context!,
    builder: (context) => new AlertDialog(
          title: new Text(title),
          content: new SingleChildScrollView(
            child: new Text(message),
          ),
          actions: <Widget>[
            new ElevatedButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
  );
}
