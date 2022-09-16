import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/injectable/injectable.dart';
import 'package:todo_list/presentation/pages/to_do_page/providers/to_do_notifier.dart';
import 'package:todo_list/presentation/pages/to_do_page/providers/to_do_state.dart';

final todoListProvider = StateNotifierProvider<ToDoNotifier, ToDoState>(
  (ref) => getIt<ToDoNotifier>()..init(),
);
