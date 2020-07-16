import 'package:app/model/hero_database.dart';
import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage();

  @override
  Widget build(BuildContext context) {
    var characters = CharacterDatabase();

    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Card(
            child: Text('i'),
          );
        },
    itemCount: characters.characterCount,);
  }
}