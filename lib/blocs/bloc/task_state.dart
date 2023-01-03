// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'task_bloc.dart';

class TaskState extends Equatable {
  final List<TaskModel> alltasks;
  final List<TaskModel> removedTasks;
  const TaskState(
      {this.alltasks = const <TaskModel>[],
      this.removedTasks = const <TaskModel>[]});

  @override
  List<Object> get props => [alltasks, removedTasks];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alltasks': alltasks.map((x) => x.toMap()).toList(),
      'removedTasks': removedTasks.map((x) => x.toMap()).toList(),
    };
  }

  factory TaskState.fromMap(Map<String, dynamic> map) {
    return TaskState(
      alltasks: List<TaskModel>.from(
        map['alltasks']?.map(
          (x) => TaskModel.fromMap(x),
        ),
      ),
      removedTasks: List<TaskModel>.from(
        map['removedTasks']?.map(
          (x) => TaskModel.fromMap(x),
        ),
      ),
    );
  }
}
