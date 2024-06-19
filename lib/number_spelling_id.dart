// lib/number_spelling.dart
import 'dart:math';

class NumberSpelling {
  static const List<String> _units = [
    '',
    'satu',
    'dua',
    'tiga',
    'empat',
    'lima',
    'enam',
    'tujuh',
    'delapan',
    'sembilan'
  ];

  static const List<String> _tens = [
    '',
    'sepuluh',
    'dua puluh',
    'tiga puluh',
    'empat puluh',
    'lima puluh',
    'enam puluh',
    'tujuh puluh',
    'delapan puluh',
    'sembilan puluh'
  ];

  static const List<String> _teens = [
    'sepuluh',
    'sebelas',
    'dua belas',
    'tiga belas',
    'empat belas',
    'lima belas',
    'enam belas',
    'tujuh belas',
    'delapan belas',
    'sembilan belas'
  ];

  static const List<String> _thousands = [
    '',
    'ribu',
    'juta',
    'miliar',
    'triliun'
  ];

  static String spell(int number) {
    if (number == 0) {
      return 'nol';
    }

    return _spellNumber(number).trim();
  }

  static String _spellNumber(int number) {
    if (number < 10) {
      return _units[number];
    } else if (number < 20) {
      return _teens[number - 10];
    } else if (number < 100) {
      return '${_tens[number ~/ 10]} ${_units[number % 10]}'.trim();
    } else if (number < 200) {
      return 'seratus ${_spellNumber(number - 100)}'.trim();
    } else if (number < 1000) {
      return '${_units[number ~/ 100]} ratus ${_spellNumber(number % 100)}'.trim();
    } else if (number < 2000) {
      return 'seribu ${_spellNumber(number - 1000)}'.trim();
    } else {
      for (int i = 0; i < _thousands.length; i++) {
        int unitValue = pow(1000, i).toInt();
        if (number < unitValue * 1000) {
          return '${_spellNumber(number ~/ unitValue)} ${_thousands[i]} ${_spellNumber(number % unitValue)}'.trim();
        }
      }
    }

    throw ArgumentError('Number is too large');
  }
}
