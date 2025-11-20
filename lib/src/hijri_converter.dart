/// A utility class for converting between Miladi (Gregorian) and Hijri (Islamic) calendar years.
///
/// This class provides methods to convert years between the two calendar systems.
class HijriConverter {
  /// The offset between Miladi and Hijri calendars (year of Hijra: 622 CE).
  static const int hijriOffset = 622;

  /// Converts a Miladi (Gregorian) year to Hijri (Islamic) year.
  ///
  /// Uses an approximation formula that accounts for the difference
  /// in year lengths between the two calendar systems.
  /// The formula: ((year - 622) * 33) / 32
  ///
  /// Example: 2025 -> 1446
  ///
  /// [year] - The Miladi year to convert
  ///
  /// Returns the corresponding Hijri year.
  static int toHijriYear(int year) {
    if (year <= hijriOffset) {
      return 1;
    }
    return ((year - hijriOffset) * 33) ~/ 32;
  }
}
