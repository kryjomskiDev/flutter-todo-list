import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/domain/to_do/store/to_do_box.dart';

const boxName = 'ToDoBox';

@Singleton(as: ToDoBox)
class ToDoBoxImpl implements ToDoBox {
  Future<Box> _openBox() => Hive.openBox<ToDo>(boxName);

  @override
  Future<void> delete(String key) async {
    final box = await _openBox();

    await box.delete(key);
  }

  @override
  Future<List<ToDo>> read() async {
    final box = await _openBox();

    return box.values.toList() as List<ToDo>;
  }

  @override
  Future<void> write(ToDo toDo) async {
    final box = await _openBox();

    await box.put(toDo.id, toDo);
  }
}
