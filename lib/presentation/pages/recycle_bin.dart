import 'package:flutter/material.dart';
import 'package:todo_task/blocs/bloc_exports.dart';
import 'package:todo_task/presentation/widgets/drawer.dart';
import 'package:todo_task/presentation/widgets/task_list.dart';

class ResycleBin extends StatelessWidget {
  const ResycleBin({super.key});
  static const id = "recycle_bin_page";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        return Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text("Recycle bin "),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
          ),
          body: Column(
            children: [
              Center(
                child: Chip(
                  label: Text("${state.removedTasks.length} :Tasks"),
                ),
              ),
              TaskList(tasks: state.removedTasks),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
