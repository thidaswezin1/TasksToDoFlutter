import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen({this.addTaskCallback});

  String taskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(
         top: 30,left: 20,right: 20,bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent
            ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                taskTitle = newValue;
              },
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              child: Text('Add',
              style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                print(taskTitle);
                addTaskCallback(taskTitle);
              },
            )
          ],
        ),
      );
  }
}
