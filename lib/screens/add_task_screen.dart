import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),
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

            ),
            FlatButton(
              child: Text('Add',
              style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.lightBlueAccent,
              onPressed: (){

              },
            )
          ],
        ),
      );
  }
}
