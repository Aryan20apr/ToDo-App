import 'package:flutter/material.dart';
import 'package:todo/components/task_list.dart';
import 'package:todo/modals/tasks_data.dart';
import 'package:todo/screens/addtask_bottomsheet.dart';
import 'package:todo/modals/task.dart';
import 'package:provider/provider.dart';
import 'package:todo/modals/tasks_data.dart';
class TasksScreen extends StatelessWidget
{ const TasksScreen({Key? key}) : super(key: key);
  //This class does not need states therefore converted to statless widget
/*class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {*/
 /* List<Task> tasks = [
    // Task(name: 'Buy Milk'),
    // Task(name: 'Buy eggs'),
    // Task(name: 'Buy bread'),//As this is modifiable property, convert Stateless widget to stateful widget
  ];*///Using provider


 //List of task objects with their name and complete status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(onPressed: ()
        {
          showModalBottomSheet(context: context, builder: (context)=> AddTaskScreen(/*(addTaskCallback: (newTaskName){
                 *//*setState(() {
                   print('New task is $newTaskName');
                   tasks.add(Task(name:newTaskName ) );
                 });*//*
                 Navigator.pop(context);//Close the add task bottom sheet on tapping add task
          }*/));//We need a callback to bring the task name from text field in bottomsheet to task screen
        },
      backgroundColor: Colors.lightBlueAccent,foregroundColor: Colors.white,child: Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(

            padding: const EdgeInsets.only(top: 60.0, left: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'ToDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,),
              decoration: const BoxDecoration(
                  color: Colors.lime,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))
              ),
              child: TaskList(),

            ),
          ),
        ],
      ),
    );
  }
}




