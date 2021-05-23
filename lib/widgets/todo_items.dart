import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class TodoItem extends StatefulWidget {
  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: CircularCheckBox(
        value: selected,
        checkColor: Colors.black,
        activeColor: Colors.yellow,
        inactiveColor: Colors.grey,
        disabledColor: Colors.yellow,
        onChanged: (val) {
          setState(() {
            this.selected = !this.selected; //! genious
          });
        },
      ),
    );
  }
}
