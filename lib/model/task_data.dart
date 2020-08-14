import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'Task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'To Buy Egg'),
    Task(name: 'To go Gym')
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  /*List<Task> get tasks{
    return _tasks;
  }*/

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTask){
    final task = Task(name: newTask);
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