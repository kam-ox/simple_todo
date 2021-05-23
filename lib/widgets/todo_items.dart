import 'package:flutter/material.dart';
//import 'package:circular_check_box/circular_check_box.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

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
          decoration: selected ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: RoundCheckBox(
        animationDuration: Duration(
          milliseconds: 500,
        ),
        size: 26,
        checkedColor: Colors.yellow,
        checkedWidget: Icon(
          Icons.check_rounded,
          color: Colors.black,
          size: 20,
        ),
        onTap: (selected) {
          setState(() {
            this.selected = !this.selected;
          });
        },
      ),
    );
  }
}
