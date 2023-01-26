import 'package:flutter/material.dart';
import 'package:flutter_screen_1/tasks/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Teste de texto', 'assets/images/mental-well-being.png', 1),
    Task('Meditação', 'assets/images/mental-well-being.png', 2),
    Task('Treinar', 'assets/images/mental-well-being.png', 3),
    Task('Caminhar', 'assets/images/mental-well-being.png', 4),
    Task('Caminhar', 'assets/images/mental-well-being.png', 1),
    Task('Caminhar', 'assets/images/mental-well-being.png', 5),
  ];

  void newTask(String name, int difficulty, String photo) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
