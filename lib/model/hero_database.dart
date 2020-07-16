import 'package:app/model/character.dart';
import 'package:flutter/material.dart';

class CharacterDatabase {
  final List<Character> _characters = [Character(), Character(), Character(), Character(), Character()];

  int get characterCount => _characters.length;
}