import 'package:pokejisho_core/src/models/pokejisho_entry.dart';

class SearchService {
  List<PokeJishoEntry> entries;

  SearchService({this.entries});

  List<PokeJishoEntry> find(String searchString) => entries
      .where(
          (entry) => entry.consolidate().contains(searchString.toLowerCase()))
      .toList()
        ..sort((a, b) => b
            .getExactMatchLength(searchString)
            .compareTo(a.getExactMatchLength(searchString)));
}
