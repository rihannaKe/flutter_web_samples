import 'package:flutter/foundation.dart'; //serve per ChangeNotifier, in realta material ce l'ha
import 'package:todey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk ' ),
    Task(name: 'Buy eggs ' ),
    Task(name: 'Buy suguar ' ),
  ];

  /*List<Task> get tasks {
    return _tasks;
  }*/
  //nn e listView ma un list nn modificabile, nn e widget,
  // it just thorws error if we tray to modify in soe widgets takks directly
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{ //when we use taskCount is going to calculate the length and return it
    return _tasks.length;
  }

  void addTask(String  newTaskname){
    final task = Task(name: newTaskname);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}