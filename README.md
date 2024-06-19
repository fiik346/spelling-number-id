# number_spelling_id

A Dart package for spelling numbers in Indonesian.

## Features

- Spell numbers in Indonesian from 0 to 999,999,999.

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  number_spelling_id: ^1.0.0
```
## Usage 

```dart

import 'package:number_spelling_id/number_spelling_id.dart';

void main() {
  print(NumberSpelling.spell(123)); // Outputs: seratus dua puluh tiga
}
```

