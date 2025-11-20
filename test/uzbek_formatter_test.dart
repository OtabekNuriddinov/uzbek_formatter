import 'package:flutter_test/flutter_test.dart';

import 'package:uzbek_formatter/uzbek_formatter.dart';

void main() {
  group('UzbekDateFormatter', () {
    test('formats date correctly', () {
      final date = DateTime(2025, 3, 21);
      expect(UzbekDateFormatter.formatDate(date), '21-Mart, 2025');
    });

    test('formats date with different months', () {
      expect(UzbekDateFormatter.formatDate(DateTime(2025, 1, 1)), '1-Yanvar, 2025');
      expect(UzbekDateFormatter.formatDate(DateTime(2025, 6, 15)), '15-Iyun, 2025');
      expect(UzbekDateFormatter.formatDate(DateTime(2025, 12, 31)), '31-Dekabr, 2025');
    });

    test('formats date with single digit day', () {
      expect(UzbekDateFormatter.formatDate(DateTime(2025, 3, 5)), '5-Mart, 2025');
    });
  });

  group('UzbekNumberFormatter', () {
    test('formats number with spaces', () {
      expect(UzbekNumberFormatter.formatNumber(12500000), '12 500 000');
    });

    test('formats small numbers without spaces', () {
      expect(UzbekNumberFormatter.formatNumber(123), '123');
      expect(UzbekNumberFormatter.formatNumber(1234), '1 234');
    });

    test('formats large numbers correctly', () {
      expect(UzbekNumberFormatter.formatNumber(1000000000), '1 000 000 000');
      expect(UzbekNumberFormatter.formatNumber(999999999), '999 999 999');
    });

    test('formats zero', () {
      expect(UzbekNumberFormatter.formatNumber(0), '0');
    });

    test('formats currency correctly', () {
      expect(UzbekNumberFormatter.formatCurrency(12500000), '12 500 000 so‘m');
      expect(UzbekNumberFormatter.formatCurrency(1000), '1 000 so‘m');
      expect(UzbekNumberFormatter.formatCurrency(0), '0 so‘m');
    });
  });

  group('HijriConverter', () {
    test('converts Miladi year to Hijri year', () {
      expect(HijriConverter.toHijriYear(2025), 1446);
    });

    test('converts different years correctly', () {
      expect(HijriConverter.toHijriYear(2000), 1421);
      expect(HijriConverter.toHijriYear(2024), 1445);
      expect(HijriConverter.toHijriYear(2026), 1447);
    });

    test('handles early years', () {
      expect(HijriConverter.toHijriYear(622), 1);
    });
  });
}
