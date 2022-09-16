import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/domain/to_do/use_case/add_or_update_to_do_use_case.dart';
import 'package:todo_list/domain/to_do/use_case/delete_to_do_use_case.dart';
import 'package:todo_list/domain/to_do/use_case/get_cached_todos_use_case.dart';
import 'package:todo_list/presentation/pages/to_do_page/providers/to_do_state.dart';

@injectable
class ToDoNotifier extends StateNotifier<ToDoState> {
  final AddOrUpdateToDoUseCase _addOrUpdateToDoUseCase;
  final DeleteToDoUseCase _deleteToDoUseCase;
  final GetCachedToDosUseCase _getCachedToDosUseCase;

  List<ToDo> todos = [];
  ToDoNotifier(
    this._addOrUpdateToDoUseCase,
    this._deleteToDoUseCase,
    this._getCachedToDosUseCase,
  ) : super(const ToDoState.loading());

  Future<void> init() async {
    todos = await _getCachedToDosUseCase();

    state = ToDoState.loaded(todos);
  }

  void addToDo(ToDo todo) {
    unawaited(_addOrUpdateToDoUseCase(todo));
    todos.add(todo);

    state = ToDoState.loaded(todos);
  }

  void removeToDo(String id) {
    unawaited(_deleteToDoUseCase(id));
    todos.removeWhere((todo) => todo.id == id);

    state = ToDoState.loaded(todos);
  }

  void toggleCompletedState(String id) {
    final todo = todos.firstWhere((todo) => todo.id == id);
    final index = todos.indexOf(todo);

    todos[index] = todo.copyWith(isCompleted: !todo.isCompleted);
    unawaited(_addOrUpdateToDoUseCase(todos[index]));

    state = ToDoState.loaded(todos);
  }
}
