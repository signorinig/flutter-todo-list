import 'package:flutter/material.dart';
import 'package:flutter_screen_1/tasks/components/task.dart';
import 'package:flutter_screen_1/tasks/data/task_inherited.dart';
import 'package:flutter_screen_1/tasks/screens/form_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 42, 55, 1),
      appBar: AppBar(
        title: const Text('Tarefas'),
        //actions: [Text('Texto')],
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: const Color.fromARGB(255, 209, 217, 231),
        onPressed: () {
          Navigator.of(context).pushNamed("/form", arguments: context);
        },
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(60, 64, 91, 1),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: const Color.fromRGBO(60, 64, 91, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(60, 64, 91, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Color.fromRGBO(76, 175, 80, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 37, 202, 125),
        //onTap: _onItemTapped,
      ),
    );
  }
}
