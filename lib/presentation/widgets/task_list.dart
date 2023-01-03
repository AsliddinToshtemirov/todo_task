import 'package:flutter/material.dart';
import 'package:todo_task/model/task_model.dart';
import 'package:todo_task/presentation/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.tasks,
  });

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          var task = tasks[index];
          return TaskTile(task: task);
        },
      ),
    );
  }
}
