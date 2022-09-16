import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/injectable/injectable.dart';
import 'package:todo_list/to_do_app.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ToDoAdapter());
  await configureDependencies();

  runApp(const ProviderScope(child: ToDoApp()));
}
