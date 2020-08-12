import 'package:flutter/material.dart';
import 'package:work_list/widgets/task_tile.dart';
class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(task: 'To learn',),
        TaskTile(task: 'To go',),
        TaskTile(task: 'To check',)
      ],
    );
  }
}