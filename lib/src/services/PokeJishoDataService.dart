import 'dart:convert';

import 'package:pokejisho_core/src/models/pokejisho_entry.dart';
import 'package:pokejisho_core/src/raw_data_entries_string.dart';

class PokeJishoDataService {
  String rawDataString;

  Future<String> getRawFileData() async {
    return rawDataEntriesString;
  }

  List<dynamic> getJsonFromData(String rawData) => jsonDecode(rawData);

  List<PokeJishoEntry> getEntriesFromJson(jsonData) => List.generate(
        jsonData.length,
        (i) => PokeJishoEntry.fromJson(jsonData[i]),
      );

  Future<List<PokeJishoEntry>> getEntries() async => getEntriesFromJson(
        getJsonFromData(
          await getRawFileData(),
        ),
      );
}
