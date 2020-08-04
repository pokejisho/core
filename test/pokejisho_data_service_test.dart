import 'package:pokejisho_core/src/services/PokeJishoDataService.dart';
import 'package:test/test.dart';

void main() {
  group('PokeJisho Data Service Tests', () {
    PokeJishoDataService pokeJishoDataService;

    setUp(() async {
      pokeJishoDataService = await PokeJishoDataService();
    });

    test('Test getting the data.', () async {
      var entries = await pokeJishoDataService.getEntries();
      expect(entries[0].english, 'Cacophony');
    });
  });
}
