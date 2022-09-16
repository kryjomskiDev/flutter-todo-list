import 'package:flutter/material.dart';
import 'package:todo_list/domain/to_do/model/to_do.dart';
import 'package:todo_list/presentation/pages/to_do_page/widgets/to_do_list_item.dart';
import 'package:todo_list/styles/styles.dart';

class ToDoPageLoadedBody extends StatelessWidget {
  final List<ToDo> todos;
  final void Function(String) onDismissed;
  final void Function(String) onToggle;

  const ToDoPageLoadedBody({
    required this.todos,
    required this.onDismissed,
    required this.onToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _PageHeader(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ToDoListItem(
                      todo: todos[index],
                      onDismissed: onDismissed,
                      onToggle: onToggle,
                    ),
                  ),
                  shrinkWrap: true,
                  itemCount: todos.length,
                ),
              ),
            ],
          ),
        ),
      );
}

class _PageHeader extends StatelessWidget {
  const _PageHeader();

  @override
  Widget build(BuildContext context) => const Text(
        'TODO LIST',
        style: TextStyle(
          fontSize: 21,
          color: Styles.black,
          fontWeight: FontWeight.bold,
        ),
      );
}
