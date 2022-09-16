import 'package:todo_list/domain/to_do/model/to_do.dart';

abstract class ToDoBox {
  Future<List<ToDo>> read();
  Future<void> write(ToDo toDo);
  Future<void> delete(String key);
}
