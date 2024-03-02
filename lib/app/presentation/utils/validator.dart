import 'package:efosm/l10n/l10n.dart';

class Validator {
  static String? notEmpty(String label, String? val) => val != null && val != '' ? null : l10n.xNotValid(label);

  static String? length(String label, String? val, int length) =>
      val != null && val.length == length ? null : l10n.xMustXChars(label, length.toString());

  static String? minLength(String label, String? val, int length) =>
      val != null && val.length >= length ? null : l10n.xMinimalXChars(label, length.toString());

  static String? maxLength(String label, String? val, int length) =>
      val != null && val.length <= length ? null : l10n.xMaxXChars(label, length.toString());

  static String? phoneNumber(String label, String? val) {
    return val != null &&
            val != '' &&
            RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(val)
        ? null
        : l10n.xNotValid(label);
  }

  static String? numeric(String label, String? val) {
    return val != null && val != '' && RegExp(r'^[0-9]+$').hasMatch(val) ? null : l10n.xNotValid(label);
  }

  static String? email(String label, String? val) {
    return val != null &&
            val != '' &&
            RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                .hasMatch(val)
        ? null
        : l10n.xNotValid(label);
  }
}
