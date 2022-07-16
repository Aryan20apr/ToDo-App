import 'package:flutter/material.dart';
import 'package:todo/modals/tasks_data.dart';
import 'package:provider/provider.dart';
import '../modals/task.dart';
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);
  // final  Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String newTaskName='No Text Available';
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          children:  <Widget>[
            const Text('Add tasks',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w600)),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText)
                {
                  newTaskName=newText;
                },
              ),
            ),
            ElevatedButton(onPressed: ()
                {
                  // addTaskCallback(newTaskName);
                  final task=Task(name:newTaskName);
                 // Provider.of<TaskData>(context).tasks.add(task);//Just adding the string will
                  // not produce any effect. We need to do it through a method as
                   Provider.of<TaskData>(context,listen: false).addTask(newTaskName);
                  Navigator.pop(context);
                }, child: Text('Add Task'),

              style: ElevatedButton.styleFrom(
                elevation: 20.0,
                shadowColor: Colors.red,
                onPrimary: Colors.black87,
                primary: Colors.lightBlueAccent,
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
               )
            )
          ],
        ),
      ),
    );
  }
}
