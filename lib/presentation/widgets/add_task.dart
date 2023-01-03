import 'package:flutter/material.dart';
import 'package:todo_task/blocs/bloc_exports.dart';
import 'package:todo_task/model/task_model.dart';
import 'package:todo_task/services/id_generate.dart';

class addTask extends StatefulWidget {
  const addTask({
    super.key,
  });

  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return Column(
      children: [
        const Text(
          "Add Task",
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          autofocus: true,
          controller: titleController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), label: Text("Title")),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel")),
            ElevatedButton(
                onPressed: () {
                  var task = TaskModel(
                      title: titleController.text, id: GUIDGen.generate());
                  context.read<TaskBloc>().add(AddTask(task: task));
                  Navigator.pop(context);
                },
                child: const Text("Add"))
          ],
        ),
      ],
    );
  }
}
