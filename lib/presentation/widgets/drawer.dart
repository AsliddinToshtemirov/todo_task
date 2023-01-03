import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_task/blocs/bloc_exports.dart';
import 'package:todo_task/presentation/pages/recycle_bin.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:todo_task/presentation/pages/home_page.dart';

// ignore: must_be_immutable
class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);

  bool positive = false;

  bool i = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Task Drawer",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Row(
                    children: [
                      BlocBuilder<ThemeBlocBloc, ThemeBlocState>(
                        builder: (context, state) {
                          return SizedBox(
                            width: 130,
                            child: AnimatedToggleSwitch<bool>.dual(
                              current: state.switchValue,
                              first: false,
                              second: true,
                              dif: 20.0,
                              borderColor:
                                  Theme.of(context).scaffoldBackgroundColor ==
                                          Colors.black
                                      ? Colors.white
                                      : Colors.transparent,
                              borderWidth: 5.0,
                              height: 50,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 1.5),
                                ),
                              ],
                              onChanged: (value) {
                                value
                                    ? context
                                        .read<ThemeBlocBloc>()
                                        .add(SwitchOnEvent())
                                    : context
                                        .read<ThemeBlocBloc>()
                                        .add(SwitchOffEvent());
                              },
                              colorBuilder: (value) =>
                                  value ? Colors.red : Colors.green,
                              iconBuilder: (value) => value
                                  ? const Icon(Icons.nightlight)
                                  : const Icon(Icons.sunny),
                              textBuilder: (value) => value
                                  ? const Center(child: Text('Light...'))
                                  : const Center(child: Text('Night :)')),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(HomePage.id);
              },
              child: BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  return ListTile(
                    leading: const Icon(CupertinoIcons.folder_badge_plus),
                    title: const Text("My Tasks"),
                    trailing: Text(state.alltasks.length.toString()),
                  );
                },
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .restorablePushReplacementNamed(ResycleBin.id);
              },
              child: BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  return ListTile(
                    leading: const Icon(CupertinoIcons.delete),
                    title: const Text("Deleted Tasks"),
                    trailing: Text(state.removedTasks.length.toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
