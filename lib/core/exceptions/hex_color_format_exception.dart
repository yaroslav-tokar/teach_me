class HexColorFormatException implements Exception {
  const HexColorFormatException({this.message = 'Wrong hex color format.'});

  final String message;
}
