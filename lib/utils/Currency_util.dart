import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrencyUtils {
  static String getCurrencySymbol(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    // Locale myLocale = Locale('en', 'IN');  // Hardcoded to India for testing
    print("Locale: ${myLocale.toString()}");  // Print the locale
    return NumberFormat.simpleCurrency(locale: myLocale.toString())
        .currencySymbol;
  }

  static String formatCurrency(BuildContext context, double amount) {
    Locale myLocale = Localizations.localeOf(context);
    return NumberFormat.currency(locale: myLocale.toString()).format(amount);
  }
}
