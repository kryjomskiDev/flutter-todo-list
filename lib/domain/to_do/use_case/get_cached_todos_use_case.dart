import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/domain/to_do/store/to_do_store.dart';

@injectable
class GetCachedToDosUseCase {
  final ToDoStore _toDoStore;

  const GetCachedToDosUseCase(this._toDoStore);

  Future<List<ToDo>> call() => _toDoStore.getToDoList();
}
