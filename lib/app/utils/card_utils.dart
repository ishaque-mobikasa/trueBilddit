import 'package:flutter/services.dart';
import 'package:truebildit/data/enums.dart';

class BankCardNumberFormater extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < inputData.length; i++) {
      int index = i + 1;
      buffer.write(inputData[i]);
      if (index % 4 == 0 && inputData.length != index) {
        buffer.write(" ");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}

class CardUtils {
  static String? validateCvv(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value.length < 3) {
      return '';
    }
    return null;
  }

  static String? validateCardNumWithLuhnAlgorithm(String input) {
    if (input.isEmpty) {
      return null;
    }

    input = input.replaceAll(RegExp(r"[^0-9]"), "");

    if (input.length < 16) {
      return "";
    }

    int sum = 0;
    int length = input.length;
    for (var i = 0; i < length; i++) {
      int digit = int.parse(input[length - i - 1]);

      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 == 0) {
      return null;
    }

    return "";
  }

  static String? validateDate(String value) {
    if (value.isEmpty) {
      return null;
    }

    int year;
    int month;
    // The value contains a forward slash if the month and year has been
    // entered.
    if (value.contains(RegExp(r'(\/)'))) {
      var split = value.split(RegExp(r'(\/)'));
      // The value before the slash is the month while the value to right of
      // it is the year.
      month = int.parse(split[0]);
      year = int.parse(split[1]);
    } else {
      // Only the month was entered
      month = int.parse(value.substring(0, (value.length)));
      year = -1; // Lets use an invalid year intentionally
    }

    if ((month < 1) || (month > 12)) {
      // A valid month is between 1 (January) and 12 (December)
      return '';
    }

    var fourDigitsYear = convertYearTo4Digits(year);
    if ((fourDigitsYear < 1) || (fourDigitsYear > 2099)) {
      // We are assuming a valid year should be between 1 and 2099.
      // Note that, it's valid doesn't mean that it has not expired.
      return '';
    }

    if (!hasDateExpired(month, year)) {
      return "";
    }
    return null;
  }

  /// Convert the two-digit year to four-digit year if necessary
  static int convertYearTo4Digits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static bool hasDateExpired(int month, int year) {
    return isNotExpired(year, month);
  }

  static bool isNotExpired(int year, int month) {
    // It has not expired if both the year and date has not passed
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }

  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    // The month has passed if:
    // 1. The year is in the past. In that case, we just assume that the month
    // has passed
    // 2. Card's month (plus another month) is less than current month.
    return hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int fourDigitsYear = convertYearTo4Digits(year);
    var now = DateTime.now();
    // The year has passed if the year we are currently, is greater than card's
    // year
    return fourDigitsYear < now.year;
  }

  static CardType getCardTypeFromNumber(String input) {
    input = input.replaceAll(RegExp(r"[^0-9]"), "");
    if (input.startsWith(RegExp(r'((34)|(37))'))) {
      return CardType.amex;
    } else if (input.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      return CardType.mastercard;
    } else if (input.startsWith(RegExp(r'[4]'))) {
      return CardType.visa;
    } else if (input.startsWith(RegExp(r'((506(0|1))|(507(8|9))|(6500))'))) {
      return CardType.verve;
    } else {
      return CardType.others;
    }
  }
}
