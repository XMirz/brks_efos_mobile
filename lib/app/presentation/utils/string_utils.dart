import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_multi_formatter/formatters/formatter_utils.dart';
import 'package:intl/intl.dart';

String toRupiahString(String number) {
  final str = number != '' && number != 'null' ? number : '0';
  return toCurrencyString(
    str,
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

String getLocalMonthName(BuildContext context, DateTime date) {
  try {
    return '${DateFormat.MMM(Localizations.localeOf(context).languageCode).format(date)} ${DateFormat.y(Localizations.localeOf(context).languageCode).format(date)}';
  } catch (e) {
    return '';
  }
}

String formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

bool isSameDay(String dateA, String dateB) {
  return dateA == dateB;
}

bool isSameMonth(String dateA, String dateB) {
  return dateA.padRight(8).substring(0, 7) == dateB.padRight(8).substring(0, 7);
}

bool isSameYear(String dateA, String dateB) {
  return dateA.padRight(5).substring(0, 4) == dateB.padRight(7).substring(0, 4);
}

String getStatsStatus(StatsCategory category) {
  if (category == StatsCategory.Rejected) return l10n.rejected;
  if (category == StatsCategory.Processing) return l10n.processing;
  if (category == StatsCategory.Done) return l10n.done;
  return l10n.total;
}
