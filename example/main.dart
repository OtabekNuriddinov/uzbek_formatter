import 'package:flutter/material.dart';
import 'package:uzbek_formatter/uzbek_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uzbek Formatter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Date formatting example
    final date = DateTime(2025, 3, 21);
    final formattedDate = UzbekDateFormatter.formatDate(date);

    // Number formatting examples
    final number1 = 12500000;
    final formattedNumber1 = UzbekNumberFormatter.formatNumber(number1);
    final formattedCurrency1 = UzbekNumberFormatter.formatCurrency(number1);

    final number2 = 1000;
    final formattedNumber2 = UzbekNumberFormatter.formatNumber(number2);
    final formattedCurrency2 = UzbekNumberFormatter.formatCurrency(number2);

    // Hijri conversion example
    final miladiYear = 2025;
    final hijriYear = HijriConverter.toHijriYear(miladiYear);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Uzbek Formatter Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Date Formatting',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Input: DateTime(2025, 3, 21)'),
            Text('Output: $formattedDate'),
            const SizedBox(height: 24),
            const Text(
              'Number Formatting',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Input: $number1'),
            Text('Formatted: $formattedNumber1'),
            Text('Currency: $formattedCurrency1'),
            const SizedBox(height: 16),
            Text('Input: $number2'),
            Text('Formatted: $formattedNumber2'),
            Text('Currency: $formattedCurrency2'),
            const SizedBox(height: 24),
            const Text(
              'Hijri Conversion',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Miladi Year: $miladiYear'),
            Text('Hijri Year: $hijriYear'),
          ],
        ),
      ),
    );
  }
}
