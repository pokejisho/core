import 'dart:convert';

import 'package:pokejisho_core/src/models/pokejisho_entry.dart';
import 'package:pokejisho_core/src/raw_data_entries_string.dart';

class PokeJishoDataService {
  String rawDataString;

  Future<String> getRawFileData() async {
    return rawDataEntriesString;
  }

  List<dynamic> getJsonFromData(String rawData) {
    var jsonData = jsonDecode(rawData);
    return jsonData;
  }

  List<PokeJishoEntry> getEntriesFromJson(jsonData) => List.generate(
      jsonData.length, (i) => PokeJishoEntry.fromJson(jsonData[i]));

  Future<List<PokeJishoEntry>> getEntries() async {
    final rawData = await getRawFileData();
    final jsonData = await getJsonFromData(rawData);
    final entries = await getEntriesFromJson(jsonData);
    return entries;
  }
}
