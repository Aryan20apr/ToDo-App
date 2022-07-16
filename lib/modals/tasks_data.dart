//Object provided throughout the tree.
import 'package:flutter/foundation.dart';//Subset of material.dart
import 'task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier {
  List<Task> _tasks = []; //Provide it across the app
  //On implementing the add task functionality using below method ,we can make this private so that we don't make a mistake of updating it without calling notifylistener()
  /*List<Task> get tasks{//Getter to get the private _tasks list
    return _tasks;
  }*///Using this will recreate the problem that we can by mistake update the value of tasklist\
  //THerefore use unmodifiable list view
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount
  {
    return _tasks.length;
  }
  void addTask(String newTaskTitle)
  {
    final task=Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task)
  {
    task.toggleTaskCompletion();
    notifyListeners();
  }
  void deleteTask(Task task)
  {
      _tasks.remove(task);
      notifyListeners();
  }
}