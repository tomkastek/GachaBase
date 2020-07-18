import 'package:app/api.dart';
import 'package:app/characters_page.dart';
import 'package:app/guides_page.dart';
import 'package:app/home_page.dart';
import 'package:app/model/character_repository.dart';
import 'package:app/teambuilding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var characterRepository = CharacterRepository();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FutureBuilder<dynamic>(
        future: characterRepository.loadLocalCharacterData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.hasData) {
            return MyHomePage(title: 'GachaBase',characterRepository: characterRepository,);
          }
          return Text('LOADING');
    }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.characterRepository}) : super(key: key);

  final String title;
  final CharacterRepository characterRepository;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      HomePage(),
      CharactersPage(characterRepository: widget.characterRepository,),
      TeambuildingPage(),
      GuidesPage(),
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black),
          title: Text('Heroes'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group, color: Colors.black),
          title: Text('Teams'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help, color: Colors.black),
          title: Text('Tips'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
