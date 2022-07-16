class Task//Describe each task
{
   String name;
  bool isDone;
  Task({this.name='Not Available',this.isDone=false});
  void toggleTaskCompletion()
  {
    isDone=!isDone;

  }
}