import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:todo_task/blocs/bloc_exports.dart';
import 'package:todo_task/model/task_model.dart';
import 'package:todo_task/presentation/widgets/add_task.dart';
import 'package:todo_task/presentation/widgets/drawer.dart';
import 'package:todo_task/presentation/widgets/task_list.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const id = "task_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();

  void _addTask(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const addTask(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        List<TaskModel> taskList = state.alltasks;
        return Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Task app"),
              actions: [
                IconButton(
                    onPressed: () {
                      _addTask(context);
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            body: Column(
              children: [
                Center(
                  child: Chip(
                    label: Text(" All tasks: ${state.alltasks.length}"),
                  ),
                ),
                TaskList(tasks: taskList),
              ],
            ),
            floatingActionButton: Platform.isAndroid
                ? FloatingActionButton(
                    onPressed: () => _addTask(context),
                    child: const Icon(Icons.add),
                  )
                : null);
      },
    );
  }
}
