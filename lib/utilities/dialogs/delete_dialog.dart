import 'package:flutter/material.dart';
import 'package:flutternotes/utilities/dialogs/generic_dialog.dart';

Future<bool> showDeleteDialog(
  BuildContext context,
) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Delete?',
    content: 'Are you sure you want to delete?',
    optionBuilder: () {
      return {'Cancel': false, 'Delete': true};
    },
  ).then(
    (value) => value ?? false,
  );
}
