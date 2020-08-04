# PokéJisho Core

A Dart core for future PokéJisho projects.

Still very much under construction. Expect the API to break and change.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:pokejisho_core/pokejisho_core.dart';

void main() async {
  final pokeJishoCore = PokeJishoCore();
  await pokeJishoCore.loadEntries();

  final results = pokeJishoCore.find('ピカチュウ');

  print(results[0].english);
  // Pikachu
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/pokejisho/core/issues
