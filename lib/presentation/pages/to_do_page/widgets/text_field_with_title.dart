import 'package:flutter/material.dart';
import 'package:todo_list/styles/app_typography.dart';
import 'package:todo_list/styles/styles.dart';

class TextFieldWithTitle extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const TextFieldWithTitle({
    required this.title,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.title,
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Styles.black),
            ),
            child: TextField(
              autofocus: false,
              controller: controller,
              cursorColor: Styles.primary,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.check,
                  color: Styles.primary,
                ),
                hintText: 'TODO',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      );
}
