import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          const RaisedButton(
            onPressed: null,
            child: Text("Start"),
          )
        ],
      ),
    );
  }
}

