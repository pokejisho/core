import 'package:pokejisho_core/pokejisho_core.dart';

void main() async {
  final pokeJishoCore = PokeJishoCore();
  await pokeJishoCore.loadEntries();

  final results = pokeJishoCore.find('ピカチュウ');

  print(results[0].english);
  // Pikachu
}
