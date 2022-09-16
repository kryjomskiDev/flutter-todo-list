import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/to_do/store/to_do_store.dart';

@injectable
class DeleteToDoUseCase {
  final ToDoStore _toDoStore;

  const DeleteToDoUseCase(this._toDoStore);

  Future<void> call(String key) => _toDoStore.deleteToDo(key);
}
