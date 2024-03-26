import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_multi_formatter/formatters/formatter_utils.dart';
import 'package:intl/intl.dart';

String toRupiahString(String number) {
  return toCurrencyString(
    number,
    leadingSymbol: 'Rp.',
    useSymbolPadding: true,
  );
}

String capitalizeFirst(String input) {
  if (input.isEmpty) {
    return input;
  }
  return input[0].toUpperCase() + input.toLowerCase().substring(1);
}

String capitalizeEachWord(String input) {
  final words = input.split(' ');
  for (var i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      words[i] = words[i][0].toUpperCase() + words[i].toLowerCase().substring(1);
    }
  }

  return words.join(' ');
}

String calculateAge(String birthdate) {
  final currentDate = DateTime.now();
  final parsedBirthdate = DateTime.parse(birthdate);

  var age = currentDate.year - parsedBirthdate.year;

  if (currentDate.month < parsedBirthdate.month ||
      (currentDate.month == parsedBirthdate.month && currentDate.day < parsedBirthdate.day)) {
    age--;
  }

  return '$age ${l10n.year}';
}

String getLocalDate(BuildContext context, String tanggal) {
  try {
    return DateFormat.yMMMMd(Localizations.localeOf(context).languageCode).format(DateTime.parse(tanggal));
  } catch (e) {
    return '';
  }
}
