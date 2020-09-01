import 'package:pokejisho_core/pokejisho_core.dart';
import 'package:pokejisho_core/src/models/pokejisho_entry.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    PokeJishoCore pokeJishoCore;

    setUp(() async {
      pokeJishoCore = PokeJishoCore();
      await pokeJishoCore.loadEntries();
    });

    test('Can find Pikachu in English.', () {
      final results = pokeJishoCore.find('pikachu');

      expect(results[0].english, 'Pikachu');
    });

    test('Can find Pikachu in Japanese.', () {
      final results = pokeJishoCore.find('ピカチュウ');

      expect(results[0].english, 'Pikachu');
    });

    test('Can return a random entry.', () {
      final entry = pokeJishoCore.random();

      expect(entry.toString(), PokeJishoEntry().toString());
    });
  });
}
