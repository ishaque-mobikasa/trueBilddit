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

class BankCardExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text.replaceAll(RegExp(r'\s+\b|\b\s'), '');
    if (text.length > 4) {
      text = text.substring(0, 4);
    }
    List<String> parts = [];
    for (int i = 0; i < text.length; i += 2) {
      parts.add(text.substring(i, i + 2));
    }
    final String newText = parts.join('/');
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

class CardUtils {
  static String? validateCvv(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    if (value.length < 3) {
      return 'Please enter a valid CVV';
    }
    return null;
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
