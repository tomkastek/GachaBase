import 'package:flutter/material.dart';

class TeambuildingPage extends StatelessWidget {
  const TeambuildingPage();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[TeambuildingCard(title: 'PVP'),
        TeambuildingCard(title: 'PVE'),
        TeambuildingCard(title: 'DEATH MATCH'),
        TeambuildingCard(title: 'TRAINING CAVE'),
        TeambuildingCard(title: 'STORY')

      ],
    );
  }
}

class TeambuildingCard extends StatelessWidget {
  const TeambuildingCard({
    Key key, this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(title)],
        ),
      ),
      color: Colors.teal[100],
    );
  }
}
