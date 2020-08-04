import 'package:pokejisho_core/pokejisho_core.dart';
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
  });
}
