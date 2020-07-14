import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              HomeCard(title: 'Current Event', subTitle: 'Fort Solgress -50%',),
              HomeCard(title: 'weekly tasks', subTitle: 'Done: 0/10',),
              HomeCard(title: 'daily tasks', subTitle: 'Done: 0/10',),
              HomeCard(title: 'Current Banner Info', subTitle: 'Blue Demon Meliodas',),
              HomeCard(title: 'Current Banner Info', subTitle: 'Blue Merlin',),
              HomeCard(title: 'Weekly Votings', subTitle: 'Wer ist am meisten Waifu? (Hot or not)',)
            ],
          ),
        )
      ],
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key, this.title, this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text(title), Text(subTitle)],
      ),
      color: Colors.teal[100],
    );
  }
}
