import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/domain/to_do/store/to_do_box.dart';
import 'package:todo_list/domain/to_do/store/to_do_store.dart';

@LazySingleton(as: ToDoStore)
class ToDoStoreImpl implements ToDoStore {
  final ToDoBox _toDoBox;

  const ToDoStoreImpl(this._toDoBox);

  @override
  Future<void> addOrUpdateToDo(ToDo todo) => _toDoBox.write(todo);

  @override
  Future<void> deleteToDo(String key) => _toDoBox.delete(key);

  @override
  Future<List<ToDo>> getToDoList() => _toDoBox.read();
}
