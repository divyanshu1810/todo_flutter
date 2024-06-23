import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    todoList = [
      ['Buy groceries', false],
      ['Pay bills', false],
      ['Go for a walk', false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', todoList);
  }
}
