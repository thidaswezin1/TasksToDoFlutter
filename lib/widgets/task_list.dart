import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_list/model/task_data.dart';
import 'package:work_list/widgets/task_tile.dart';
class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context,index){
              final task = taskData.tasks[index];
              return TaskTile(
                taskTitle:  task.name,
                isChecked:  task.isDone,
                checkBoxCallback: (value){
                  /* setState(() {
                  widget.tasks[index].toggleDone();
                });*/
                  taskData.updateTask(task);
                },
                onLongPressCallback: (){
                  taskData.deleteTask(task);
                },
              );
            });
      },
    );
  }
}