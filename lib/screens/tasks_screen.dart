import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:work_list/model/Task.dart';
import 'package:work_list/screens/add_task_screen.dart';
import 'package:work_list/widgets/task_list.dart';
class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                )
            ),
              context: context,
              isScrollControlled: true,
              builder: (context)=>SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(addTaskCallback: (newValue){
                      setState(() {
                        tasks.add(Task(name: newValue));
                      });
                      Navigator.pop(context);
                    },)),
              ));
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  left: 30,right: 30,top: 50,bottom: 30
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list,size: 38.0,color: Colors.lightBlueAccent,),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'To Do List',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    '${tasks.length} Tasks',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                child: TaskList(tasks: tasks),
              ),
            )
          ],
        ),
    );
  }
}



