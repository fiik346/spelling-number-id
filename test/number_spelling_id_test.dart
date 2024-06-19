import 'package:flutter_test/flutter_test.dart';

import 'package:number_spelling_id/number_spelling_id.dart';

void main() {
  test('Number spelling for small numbers', () {
    expect(NumberSpelling.spell(0), 'nol');
    expect(NumberSpelling.spell(1), 'satu');
    expect(NumberSpelling.spell(9), 'sembilan');
  });

  test('Number spelling for teens', () {
    expect(NumberSpelling.spell(11), 'sebelas');
    expect(NumberSpelling.spell(15), 'lima belas');
  });

  test('Number spelling for tens', () {
    expect(NumberSpelling.spell(20), 'dua puluh');
    expect(NumberSpelling.spell(25), 'dua puluh lima');
  });

  test('Number spelling for hundreds', () {
    expect(NumberSpelling.spell(100), 'seratus');
    expect(NumberSpelling.spell(105), 'seratus lima');
    expect(NumberSpelling.spell(150), 'seratus lima puluh');
  });

  test('Number spelling for thousands', () {
    expect(NumberSpelling.spell(1000), 'seribu');
    expect(NumberSpelling.spell(1005), 'seribu lima');
    expect(NumberSpelling.spell(1050), 'seribu lima puluh');
    expect(NumberSpelling.spell(1100), 'seribu seratus');
    expect(NumberSpelling.spell(2000), 'dua ribu');
    expect(NumberSpelling.spell(10000), 'sepuluh ribu');
  });

  test('Number spelling for milions', () {
    expect(NumberSpelling.spell(1000000), 'satu juta');
    expect(NumberSpelling.spell(10000000), 'sepuluh juta');
  });
}
