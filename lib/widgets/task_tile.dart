import 'package:flutter/material.dart';
/*
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.',
      style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),),
      trailing: CheckBoxWidget(
        isCheck: isChecked,
        checkBoxCallBack: (bool checkValue){
          setState(() {
            isChecked = checkValue;
          });
        },
      ),
    );
  }
}

class CheckBoxWidget extends StatelessWidget {
  final bool isCheck;
  final Function checkBoxCallBack;
  const CheckBoxWidget({this.isCheck,this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isCheck,
      onChanged: checkBoxCallBack,
    );
  }
}*/

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
