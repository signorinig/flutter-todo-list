import 'package:flutter/material.dart';
import 'package:flutter_screen_1/tasks/screens/form_screen.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int indexItemBar = 0;
  List<Widget> itensBar = <Widget>[
    //Navigator.of(context).pushReplacementNamed("/form");
  ];

  selectIndexBar(int index) {
    setState(() {
      indexItemBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
