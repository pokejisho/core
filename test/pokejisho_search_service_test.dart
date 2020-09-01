import 'package:pokejisho_core/src/services/PokeJishoDataService.dart';
import 'package:pokejisho_core/src/services/SearchService.dart';
import 'package:test/test.dart';

void main() {
  group('PokeJisho Search Service Tests', () {
    SearchService searchService;

    setUp(() async {
      searchService = await SearchService();
    });

    test('"  Mega Punch" and "megapunch" should match.', () async {
      expect(searchService.normalize('  Mega Punch'), 'mega punch');
    });

    test('"  てすと" and "テスト" should match.', () async {
      expect(searchService.normalize('  てすと'), 'テスト');
    });

    test('"てすと and てすと" and "テストandテスト" should match.', () async {
      expect(searchService.normalize('てすと and てすと'), 'テスト and テスト');
    });
  });
}
