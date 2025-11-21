/// A utility class for formatting dates in Uzbek language format.
///
/// This class provides methods to format [DateTime] objects into
/// Uzbek date strings with month names in Uzbek.
class UzbekDateFormatter {
  /// Creates a new instance of [UzbekDateFormatter].
  ///
  /// This is a utility class with only static methods, so
  /// instantiation is not necessary.
  const UzbekDateFormatter();

  /// List of Uzbek month names in order (January to December).
  static const List<String> months = [
    'Yanvar',
    'Fevral',
    'Mart',
    'Aprel',
    'May',
    'Iyun',
    'Iyul',
    'Avgust',
    'Sentabr',
    'Oktabr',
    'Noyabr',
    'Dekabr'
  ];

  /// Formats a [DateTime] object into Uzbek date format.
  ///
  /// Returns a string in the format: "DD-Month, YYYY"
  /// Example: "21-Mart, 2025"
  ///
  /// [date] - The DateTime object to format
  ///
  /// Returns a formatted date string in Uzbek format.
  static String formatDate(DateTime date) {
    final day = date.day;
    final month = months[date.month - 1];
    final year = date.year;
    return '$day-$month, $year';
  }
}
