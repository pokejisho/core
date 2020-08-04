import 'package:pokejisho_core/src/models/pokejisho_entry.dart';
import 'package:pokejisho_core/src/services/PokeJishoDataService.dart';
import 'package:pokejisho_core/src/services/SearchService.dart';

class PokeJishoCore {
  List<PokeJishoEntry> entries;

  void loadEntries() async {
    entries = await PokeJishoDataService().getEntries();
  }

  List<PokeJishoEntry> find(String searchTerm) {
    final searchService = SearchService(entries: entries);
    return searchService.find(searchTerm);
  }
}
