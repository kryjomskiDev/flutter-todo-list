import 'package:todo_list/domain/to_do/model/to_do.dart';

abstract class ToDoStore {
  Future<List<ToDo>> getToDoList();
  Future<void> addOrUpdateToDo(ToDo todo);
  Future<void> deleteToDo(String key);
}
