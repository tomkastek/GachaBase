import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
        itemBuilder: (context, index) {
          return Card(
            child: Text('i'),
          );
        },
    itemCount: 80,);
  }
}
