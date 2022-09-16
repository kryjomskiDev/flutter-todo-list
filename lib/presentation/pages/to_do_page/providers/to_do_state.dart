import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';

part 'to_do_state.freezed.dart';

@freezed
class ToDoState with _$ToDoState {
  const factory ToDoState.loading() = ToDoStateLoading;
  const factory ToDoState.loaded(List<ToDo> todos) = ToDoStateLoaded;
}
