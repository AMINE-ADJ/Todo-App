import'package:flutter/material.dart';



class Task extends StatefulWidget {
  const Task({
    Key? key,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {

  bool isChecked = false;
  void checkTask(){
    setState(() {
      isChecked = !isChecked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('My New Task'),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        }, checkColor: Colors.white,),
    );
  }
}