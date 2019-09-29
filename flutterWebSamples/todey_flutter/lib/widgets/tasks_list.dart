import 'package:flutter/material.dart';
import 'package:todey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context,index){
            final taskItem = taskData.tasks[index];
            return TaskTile( //widget refers to TasksList Stateful widget
                taskTitle: taskItem.name,
                isChecked: taskItem.isDone,
                checkBoxCallback: (bool checkBoxState){
                  taskData.updateTask(taskItem);
                },
                longPressCallback: (){
                  taskData.deleteTask(taskItem);
                },
            );
          }, itemCount: taskData.tasks.length,
        );
      }
    );
  }
}
