import 'package:flutter/material.dart';
import 'package:todo_list/styles/styles.dart';

class AppFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  const AppFloatingActionButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Styles.primary,
        child: const Icon(Icons.add),
      );
}
