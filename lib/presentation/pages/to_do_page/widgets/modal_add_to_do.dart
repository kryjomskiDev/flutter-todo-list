import 'package:flutter/material.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/presentation/pages/to_do_page/widgets/text_field_with_title.dart';
import 'package:todo_list/styles/app_typography.dart';
import 'package:todo_list/styles/styles.dart';

class ModalAddToDo extends StatelessWidget {
  final TextEditingController controller;
  final void Function(ToDo) addToDoCallback;

  const ModalAddToDo({
    required this.controller,
    required this.addToDoCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(40),
        color: Styles.bgColor,
        height: 400,
        child: Column(
          children: [
            const Text(
              'Create Todo:',
              style: AppTypography.title,
            ),
            const SizedBox(height: 30),
            TextFieldWithTitle(
              controller: controller,
              title: 'Enter Title',
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Styles.primary,
              ),
              onPressed: () => controller.text.isEmpty ? null : createToDo(context),
              child: const Text(
                'Add Todo',
                style: AppTypography.title,
              ),
            )
          ],
        ),
      );

  void createToDo(BuildContext context) {
    final toDo = ToDo(
      id: DateTime.now().toString(),
      title: controller.text,
      isCompleted: false,
    );

    addToDoCallback.call(toDo);
    Navigator.of(context).pop();
  }
}
