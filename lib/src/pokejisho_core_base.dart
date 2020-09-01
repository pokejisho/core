import 'dart:math';

import 'package:pokejisho_core/src/models/pokejisho_entry.dart';
import 'package:pokejisho_core/src/services/PokeJishoDataService.dart';
import 'package:pokejisho_core/src/services/SearchService.dart';

class PokeJishoCore {
  SearchService searchService;
  List<PokeJishoEntry> entries;

  void loadEntries() async {
    entries = await PokeJishoDataService().getEntries();
    searchService = SearchService(entries: entries);
  }

  PokeJishoEntry random() {
    final random = Random();
    final index = random.nextInt(entries.length - 0);
    return entries[index];
  }

  List<PokeJishoEntry> find(String searchTerm) {
    return searchService.find(searchTerm);
  }
}
