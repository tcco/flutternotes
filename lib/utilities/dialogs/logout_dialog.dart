import 'package:flutter/material.dart';
import 'package:flutternotes/utilities/dialogs/generic_dialog.dart';

Future<bool> showLogOutDialog(
  BuildContext context,
) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Logout?',
    content: 'Are you sure you want to logout?',
    optionBuilder: () {
      return {'Cancel': false, 'Log out': true};
    },
  ).then(
    (value) => value ?? false,
  );
}
