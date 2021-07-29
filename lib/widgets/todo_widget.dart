import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaksin_info/data/todo_list.dart';
import 'package:vaksin_info/widgets/todo_list_widget.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          /* --------------------------- gambar vaccine time -------------------------- */
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                height: (constraints.maxWidth - 100 < 300)
                    ? constraints.maxWidth - 100
                    : 300,
                child: Image.asset('assets/images/vaccineTime.png'),
              );
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Ayo ambil Vaksin Covid-19 kamu dengan mengikuti todo list di bawah ini.',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          /* -------------------------------- todo list ------------------------------- */
          TodoList(),
          /* --------------------------------- footer --------------------------------- */
          SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
