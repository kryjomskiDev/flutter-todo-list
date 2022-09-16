import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/domain/to_do/store/to_do_store.dart';

@injectable
class AddOrUpdateToDoUseCase {
  final ToDoStore _toDoStore;

  const AddOrUpdateToDoUseCase(this._toDoStore);

  Future<void> call(ToDo todo) => _toDoStore.addOrUpdateToDo(todo);
}
