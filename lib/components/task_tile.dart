import 'package:flutter/material.dart';

/*
class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;//Lifted up from TaskCheckBox into the parent widget which is the task tile state

void checkBoxCallback(bool? checkBoxState)
{
  setState(()
  {
    isChecked=checkBoxState!;
  });
}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a text',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked, toggleCheckBoxState: checkBoxCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({super.key, required this.checkBoxState, required this.toggleCheckBoxState});
  final  void Function(bool?) toggleCheckBoxState;
  final bool checkBoxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.yellowAccent,
      onChanged: toggleCheckBoxState,*/
/*(value) {
        *//*
*/
/*setState(() {
          isChecked = value;
        });*//*
*/
/* //Stateless widget cannot have a setState() as it does not have a state

      },*//*

      value: checkBoxState,
    );
  }
}
*/

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle;
  final void Function(bool?) checkBoxCallBack;
  final void Function() lonPressCallback;

 const TaskTile({super.key,required this.isChecked,required this.taskTitle, required this.checkBoxCallBack,required this.lonPressCallback });

  // void checkBoxCallback(bool? checkBoxState)
  // {
  //   setState(()
  //   {
  //     isChecked=checkBoxState!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: lonPressCallback,//Trigger the callback which comes from the parent
        // of task tile which is the task list where the consumer
        // exists and where we do all the updating related to provided
        // task data
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.yellowAccent,
        onChanged: checkBoxCallBack,/*(value){
          checkboxCallback(newValue);
        },*/
        //onChanged: toggleCheckBoxState,
        /*onChanged: (value) {
        *//*setState(() {
          isChecked = value;
        });*//* //Stateless widget cannot have a setState() as it does not have a state

      },*/
        value: isChecked,
      )
    );
  }
}

/*
class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({super.key, required this.checkBoxState, required this.toggleCheckBoxState});
  final  void Function(bool?) toggleCheckBoxState;
  final bool checkBoxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.yellowAccent,
      onChanged: toggleCheckBoxState,*/
/*(value) {
        *//*
*/
/*setState(() {
          isChecked = value;
        });*//*
*/
/* //Stateless widget cannot have a setState() as it does not have a state

      },*//*

      value: checkBoxState,
    );
  }
}
*/
