import 'package:flutter/material.dart';
import 'pages/game.dart';

void main() => runApp(Nihongo50App());

class Nihongo50App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nihongo50",
      theme: ThemeData(primaryColor: Colors.amber),
      home: Nihongo50Widget(),
    );
  }
}

class Nihongo50Widget extends StatefulWidget {
  @override
  _Nihongo50WidgetState createState() => _Nihongo50WidgetState();
}

class _Nihongo50WidgetState extends State<Nihongo50Widget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Game(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "日語小教室"
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inclusive),
            title: Text("Game"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text("每日一句"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adb),
            title: Text("設定"),
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

//_widgetOptions.elementAt(_selectedIndex),