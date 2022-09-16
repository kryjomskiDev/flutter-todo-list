import 'package:flutter/material.dart';
import 'package:todo_list/presentation/pages/to_do_page/to_do_page.dart';
import 'package:todo_list/styles/styles.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'ToDo List',
        theme: ThemeData(
          scaffoldBackgroundColor: Styles.bgColor,
        ),
        debugShowCheckedModeBanner: false,
        home: const ToDoPage(),
      );
}
