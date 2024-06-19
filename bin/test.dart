import 'dart:io';
import 'package:number_spelling_id/number_spelling_id.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide a number as an argument.');
    exit(1);
  }

  try {
    int number = int.parse(arguments[0]);
    String spelledNumber = NumberSpelling.spell(number);
    print('The number $number is spelled as: $spelledNumber');
  } catch (e) {
    print('Invalid input. Please provide a valid integer number.');
    exit(1);
  }
}
