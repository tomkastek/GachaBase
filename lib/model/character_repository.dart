import 'dart:convert';

import 'package:app/model/character.dart';
import 'package:flutter/services.dart';

class CharacterRepository {
  final List<Character> _characters = [];

  int get characterCount => _characters.length;

  Future<dynamic> loadLocalCharacterData() async {
    var jsonString = await rootBundle.loadString('assets/heroes_data_de.json');
    List<dynamic> characters = jsonDecode(jsonString);
    for(var i = 0; i<characters.length; i++) {
      var character = Character.fromJson(characters[i]);
      _characters.add(character);
    }
    return '';
  }
}