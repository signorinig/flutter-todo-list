import 'package:flutter/material.dart';
import 'package:flutter_screen_1/tasks/components/theme.dart';
import 'package:flutter_screen_1/tasks/data/task_inherited.dart';
import 'package:flutter_screen_1/tasks/screens/form_screen.dart';
import 'package:flutter_screen_1/tasks/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      //home: const TaskScreen(),
      initialRoute: "/",
      routes: {
        "/": (contextinitial) => TaskInherited(child: const TaskScreen()),
        "/form": (contextform) => FormScreen(),
      },
    );
  }
}
