import 'package:pokejisho_core/src/models/pokejisho_entry_type.dart';

class PokeJishoEntry {
  PokejishoEntryType type;
  String english;
  String japanese;
  String katakana;
  String romaji;

  PokeJishoEntry(
      {this.type, this.english, this.japanese, this.katakana, this.romaji});

  PokeJishoEntry.fromJson(Map<dynamic, dynamic> json) {
    english = json['english'];
    japanese = json['japanese'];
    katakana = json['katakana'];
    romaji = json['romaji'];

    String lowerCaseType = json['type']
      ..toString()
      ..toLowerCase();
    switch (lowerCaseType) {
      case 'pokemon':
        type = PokejishoEntryType.pokemon;
        break;
      case 'ability':
        type = PokejishoEntryType.ability;
        break;
      case 'item':
        type = PokejishoEntryType.item;
        break;
      case 'character':
        type = PokejishoEntryType.character;
        break;
      case 'location':
        type = PokejishoEntryType.location;
        break;
      case 'move':
        type = PokejishoEntryType.move;
        break;
      case 'nature':
        type = PokejishoEntryType.nature;
        break;
      default:
        type = PokejishoEntryType.pokemon;
    }
  }

  String consolidate() =>
      '$english $japanese $romaji $katakana $type'.toLowerCase();

  int getExactMatchLength(String searchString) => consolidate()
      .split(' ')
      .where((entryData) => entryData == searchString)
      .toList()
      .length;
}
