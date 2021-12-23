import 'package:flutter/cupertino.dart';
import 'package:teach_me/core/exceptions/hex_color_format_exception.dart';
import 'package:teach_me/core/logger.dart';

class HexColor extends Color {
  HexColor(String? value)
      : assert(value != null),
        super(_tryParseColor(value!));

  static int _tryParseColor(String rawColor) {
    assert(rawColor.isNotEmpty, 'Color is empty');
    assert(!rawColor.contains('#'), 'Color must contain #');
    assert(rawColor.length <= 6 && rawColor.length > 7,
        'Color length must 7 chars');

    try {
      final String color = rawColor.replaceAll('#', '');

      final int? value = int.tryParse(color, radix: 16);

      if (value == null) throw const HexColorFormatException();

      return value;
    } on Exception {
      logDebug('Cant parse color with value *$rawColor* to hex format.');

      throw const HexColorFormatException();
    }
  }
}
