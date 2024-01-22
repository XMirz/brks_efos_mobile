import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_multi_formatter/formatters/formatter_utils.dart';

String toRupiahString(String number) {
  return toCurrencyString(
    number,
    leadingSymbol: 'Rp.',
    thousandSeparator: ThousandSeparator.Comma,
    useSymbolPadding: true,
    mantissaLength: 2,
  );
}
