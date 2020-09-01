import 'package:pokejisho_core/src/models/pokejisho_entry.dart';

class SearchService {
  List<PokeJishoEntry> entries;

  SearchService({this.entries});

  List<PokeJishoEntry> find(String searchTerm) => entries
      .where((entry) => entry.consolidate().contains(normalize(searchTerm)))
      .toList()
        ..sort((a, b) => b
            .getExactMatchLength(searchTerm)
            .compareTo(a.getExactMatchLength(searchTerm)));

  String normalize(String phrase) =>
      phrase.toLowerCase().trim().replaceAllMapped(
            RegExp(r'[ぁ-ん]'),
            (Match m) => String.fromCharCode(
              m[0].toString().codeUnitAt(0) + 0x60,
            ),
          );
}
