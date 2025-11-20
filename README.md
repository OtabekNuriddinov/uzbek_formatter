# Uzbek Formatter

[![pub package](https://img.shields.io/pub/v/uzbek_formatter.svg)](https://pub.dev/packages/uzbek_formatter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A comprehensive Flutter & Dart package for formatting dates, numbers, and currency in Uzbek language format, with support for Hijri calendar conversion.

## Features

- 📅 **Uzbek Date Formatting**: Format dates with Uzbek month names (e.g., "21-Mart, 2025")
- 🔢 **Number Formatting**: Format numbers with space separators (e.g., "12 500 000")
- 💰 **Currency Formatting**: Format numbers as Uzbek som currency (e.g., "12 500 000 so'm")
- 🌙 **Hijri Conversion**: Convert Miladi (Gregorian) years to Hijri (Islamic) years

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  uzbek_formatter: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Usage

### Date Formatting

Format dates in Uzbek format with month names:

```dart
import 'package:uzbek_formatter/uzbek_formatter.dart';

void main() {
  final date = DateTime(2025, 3, 21);
  print(UzbekDateFormatter.formatDate(date));
  // Output: 21-Mart, 2025
}
```

### Number Formatting

Format numbers with space separators:

```dart
import 'package:uzbek_formatter/uzbek_formatter.dart';

void main() {
  final number = 12500000;
  print(UzbekNumberFormatter.formatNumber(number));
  // Output: 12 500 000
}
```

### Currency Formatting

Format numbers as Uzbek currency:

```dart
import 'package:uzbek_formatter/uzbek_formatter.dart';

void main() {
  final amount = 12500000;
  print(UzbekNumberFormatter.formatCurrency(amount));
  // Output: 12 500 000 so'm
}
```

### Hijri Calendar Conversion

Convert Miladi years to Hijri years:

```dart
import 'package:uzbek_formatter/uzbek_formatter.dart';

void main() {
  final miladiYear = 2025;
  final hijriYear = HijriConverter.toHijriYear(miladiYear);
  print('$miladiYear Miladi = $hijriYear Hijri');
  // Output: 2025 Miladi = 1446 Hijri
}
```

## API Reference

### UzbekDateFormatter

#### `formatDate(DateTime date)`

Formats a `DateTime` object into Uzbek date format.

**Parameters:**
- `date` - The DateTime object to format

**Returns:** A string in the format "DD-Month, YYYY"

**Example:**
```dart
UzbekDateFormatter.formatDate(DateTime(2025, 3, 21))
// Returns: "21-Mart, 2025"
```

### UzbekNumberFormatter

#### `formatNumber(int number)`

Formats a number with space separators every three digits.

**Parameters:**
- `number` - The integer number to format

**Returns:** A formatted number string with space separators

**Example:**
```dart
UzbekNumberFormatter.formatNumber(12500000)
// Returns: "12 500 000"
```

#### `formatCurrency(int number)`

Formats a number as Uzbek currency (so'm).

**Parameters:**
- `number` - The integer number to format as currency

**Returns:** A formatted currency string with "so'm" suffix

**Example:**
```dart
UzbekNumberFormatter.formatCurrency(12500000)
// Returns: "12 500 000 so'm"
```

### HijriConverter

#### `toHijriYear(int year)`

Converts a Miladi (Gregorian) year to Hijri (Islamic) year.

**Parameters:**
- `year` - The Miladi year to convert

**Returns:** The corresponding Hijri year

**Example:**
```dart
HijriConverter.toHijriYear(2025)
// Returns: 1446
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Otabek

---

Made with ❤️ for the Uzbek Flutter community
