import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class Api {
  Future<String> fetchCurrentHeroesInformation() async {
    // For testing purposes we first work with local data
    return await _loadAsset('assets/heroes_data_de.json');
  }

  /// Loads a String by fileName
  Future<String> _loadAsset(String fileName) async {
    return await rootBundle.loadString(fileName);
  }
}