/// A utility class for formatting numbers in Uzbek format.
///
/// This class provides methods to format numbers with space separators
/// and format currency values in Uzbek som.
class UzbekNumberFormatter {
  /// Creates a new instance of [UzbekNumberFormatter].
  ///
  /// This is a utility class with only static methods, so
  /// instantiation is not necessary.
  const UzbekNumberFormatter();
  /// Formats a number with space separators every three digits.
  ///
  /// Example: 12500000 -> "12 500 000"
  ///
  /// [number] - The integer number to format
  ///
  /// Returns a formatted number string with space separators.
  static String formatNumber(int number) {
    final str = number.toString();
    final buffer = StringBuffer();
    int count = 0;

    for (int i = str.length - 1; i >= 0; i--) {
      buffer.write(str[i]);
      count++;
      if (count % 3 == 0 && i != 0) buffer.write(' ');
    }

    return buffer.toString().split('').reversed.join('');
  }

  /// Formats a number as Uzbek currency (so'm).
  ///
  /// Example: 12500000 -> "12 500 000 so'm"
  ///
  /// [number] - The integer number to format as currency
  ///
  /// Returns a formatted currency string with "so'm" suffix.
  static String formatCurrency(int number) {
    return '${formatNumber(number)} so‘m';
  }
}
