import 'package:flutter/material.dart';
import 'package:todo_task/model/task_model.dart';

import '../../blocs/bloc_exports.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.task,
  });

  final TaskModel task;
  void _removeOrDeleteTask(BuildContext context, TaskModel task) {
    task.isDeleted!
        ? context.read<TaskBloc>().add(DeleteTask(task: task))
        : context.read<TaskBloc>().add(RemoveTask(task: task));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.title,
        style: TextStyle(
            decoration: task.isDone!
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: task.isDone,
        onChanged: task.isDeleted == false
            ? (value) {
                context.read<TaskBloc>().add(UpdateTask(task: task));
              }
            : null,
      ),
      onLongPress: () {
        _removeOrDeleteTask(context, task);
      },
    );
  }
}
