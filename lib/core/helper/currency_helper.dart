import 'package:intl/intl.dart';

class CurrencyHelper {
  static String convertToIdr(
    dynamic number, {
    int? decimalDigit = 0,
    bool? deleteSymbols,
  }) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: (deleteSymbols ?? false) ? '' : 'IDR.',
      decimalDigits: decimalDigit,
    );
    if (number == null) return currencyFormatter.format(0);
    return currencyFormatter.format(number);
  }
}
