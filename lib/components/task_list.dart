import 'package:flutter/material.dart';
import 'package:todo/components/task_tile.dart';
// import 'package:todo/modals/task.dart';
import 'package:todo/modals/tasks_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget
{
/*class TaskList extends StatefulWidget {
  const TaskList( {
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {*///We are not using this stateful  widget as we removed the tasks property due to which it was created

 /* List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Milk'),
  ];*/ //List of task objects with their name and complete status
  //Move this from here up the tree to TasksScreen
  @override
  Widget build(
      BuildContext
          context) //BuildContext tells the children where the parent is in widget tree {
  {
    /*return ListView(
      children: <Widget>[
        TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone,),
        TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
        TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone)
      ],
    );*/ //Instead of repetetive task tiles, we can use ListViewBuilder
    return Consumer<TaskData>(//Consumer widget will listen for changes in task data and update its state then its going to rebuild this entire view
      builder:(context,taskData,child){//taskData is a TaskData object
        //Return any widget using the three arguments
        return ListView.builder(
          itemBuilder: (context, index) //Same as above buildcontext
          {final task=taskData.tasks[index];
            return TaskTile(
              // isChecked: widget.tasks[index].isDone,//widget refers to the stateful widget which gets that property when we create a new task list
              // taskTitle: widget.tasks[index].name,
                taskTitle: taskData.tasks[index].name,
                isChecked:taskData.tasks[index].isDone,
                lonPressCallback: ()
                {
                  taskData.deleteTask(taskData.tasks[index]);
                },//trigger call to delete method in
                checkBoxCallBack: (bool?
                checkboxState) //This triggered insisde the tasktile where the checkbox is going to pass in the current checkbox state
                {
                  taskData.updateTask(task);
                  /* setState(() {
                widget.tasks[index].toggleTaskCompletion();
                });*/
                });
          },
          itemCount: taskData.tasks.length,
        );
      } ,

    );
  }
}
