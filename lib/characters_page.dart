import 'package:app/model/character_repository.dart';
import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({this.characterRepository});

  final CharacterRepository characterRepository;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Card(
            child: Text('i'),
          );
        },
    itemCount: characterRepository.characterCount,);
  }
}