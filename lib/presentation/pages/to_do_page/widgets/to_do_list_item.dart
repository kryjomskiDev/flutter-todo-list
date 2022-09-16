import 'package:flutter/material.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/styles/app_typography.dart';
import 'package:todo_list/styles/styles.dart';

class ToDoListItem extends StatelessWidget {
  final ToDo todo;
  final void Function(String) onDismissed;
  final void Function(String) onToggle;

  const ToDoListItem({
    required this.todo,
    required this.onDismissed,
    required this.onToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Dismissible(
        key: Key(todo.id),
        direction: DismissDirection.endToStart,
        onDismissed: (_) => onDismissed(todo.id),
        background: ColoredBox(
          color: Styles.red,
          child: Row(
            children: const [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(
                  Icons.delete,
                  size: 31,
                  color: Styles.white,
                ),
              ),
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Styles.green,
            border: Border.all(
              color: Styles.darkGreen,
              width: 1,
            ),
          ),
          child: ListTile(
            title: Text(
              todo.title,
              style: AppTypography.title,
            ),
            trailing: Checkbox(
              activeColor: Styles.primary,
              onChanged: (_) => onToggle(
                todo.id,
              ),
              value: todo.isCompleted,
            ),
          ),
        ),
      );
}
