import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(
                activeColor: Colors.black,
                value: taskCompleted,
                onChanged: onChanged),
            Text(
              taskName,
              style: taskCompleted
                  ? const TextStyle(decoration: TextDecoration.lineThrough)
                  : const TextStyle(decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
