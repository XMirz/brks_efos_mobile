import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';

void showOurSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message != '' ? message : l10n.somethingWrong),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
