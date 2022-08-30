import 'package:flutter/material.dart';

import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        onPressed: () {  },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left : 30.0, top: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list, size: 30.0, color: Colors.teal,),

                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('TodoApp', style: TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.w700),),
                Text('12 Tasks', style: TextStyle(fontSize: 20.0, color: Colors.white),)
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0) ,topLeft: Radius.circular(20.0) )
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}



