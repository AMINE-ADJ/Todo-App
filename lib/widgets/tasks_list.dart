import'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';


class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Task(),
        Task(),
        Task(),

      ],
    );
  }
}